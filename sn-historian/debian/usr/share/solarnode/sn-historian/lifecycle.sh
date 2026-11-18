# shellcheck shell=sh disable=SC2154,SC2034
#
# sn-historian: The disable and reset-history commands.
# (SC2154: the st_* values are set by read_state in common.sh; SC2034: SNH_LOCKED
# is read by ensure_lock in ensure.sh)

# disable's exit code when other pg_cron jobs still need pg_cron
EX_CRON_KEPT=10
# set by disable_cron
CRON_KEPT=

# Unschedule our pg_cron jobs, and drop the pg_cron extension if sn-historian-db-local
# added the preload and no other jobs are left. Sets CRON_KEPT if other jobs are left.
# Fails if Postgres could not be asked.
disable_cron () {
	db="$(cron_db)" || return 1
	if ! valid_ident "$db"; then
		warn "Unexpected cron.database_name '$db'."
		return 1
	fi
	ext="$(query "$db" "SELECT 1 FROM pg_extension WHERE extname = 'pg_cron'")" || return 1
	if [ -z "$ext" ]; then
		log "pg_cron: no extension in $db"
		return 0
	fi
	ids="$(query "$db" "SELECT jobid FROM cron.job WHERE $OUR_JOBS ORDER BY jobid")" || return 1
	left=
	for id in $ids; do
		# cron.unschedule needs pg_cron loaded. When it is not, delete the row with
		# triggers off: the cron.job trigger only tells a running pg_cron to reload,
		# and needs the library.
		if query "$db" "SELECT cron.unschedule(${id}::bigint)" >/dev/null 2>&1 \
				|| query "$db" "SET session_replication_role = replica; DELETE FROM cron.job WHERE jobid = ${id}" >/dev/null; then
			log "cron job $id: unscheduled"
		else
			warn "Could not unschedule pg_cron job $id."
			left=1
		fi
	done
	if [ -n "$left" ]; then
		return 1
	fi
	others="$(query "$db" "SELECT count(*) FROM cron.job WHERE NOT $OUR_JOBS")" || return 1
	if [ "$others" != "0" ]; then
		CRON_KEPT=1
		log "pg_cron: kept for $others other job(s) in $db"
	elif [ -e "$PRELOAD_MARKER" ]; then
		psql_pg -d "$db" -c 'DROP EXTENSION pg_cron' || return 1
		log "pg_cron: extension dropped from $db"
	else
		log "pg_cron: extension kept (it was set up before sn-historian-db-local)"
	fi
}

# Undo what ensure set up for SolarNode: the DataSource binding and the pg_cron
# jobs (and the pg_cron extension, if sn-historian-db-local added the preload and
# no other jobs use it). The history data, schemas, aggs_for_vecs and the jit
# setting stay. Run by package removal; while sn-historian-db-local is installed,
# Postgres's next start runs ensure again. Exits 10 if other pg_cron jobs need
# pg_cron. Checks no settings, so a bad one can't stop a package removal.
disable () {
	if ! ensure_lock 30; then
		warn "Another ensure is still running; disabling anyway."
	fi
	pool_unbind_all
	if ! pg_ready 5; then
		warn "Postgres is not running, so the historian pg_cron jobs were left in place. They do nothing once pg_cron is not loaded; any other pg_cron jobs were not checked."
	elif ! disable_cron; then
		warn "Could not unschedule the historian pg_cron jobs."
	fi
	if [ -n "$UNBOUND" ] && sn_active; then
		request_restart "historian disabled"
	fi
	log "disabled; the history data was kept"
	if [ -n "$CRON_KEPT" ]; then
		exit "$EX_CRON_KEPT"
	fi
}

# schema_outside_deps SCHEMA: print the objects outside SCHEMA that depend on it,
# which DROP SCHEMA ... CASCADE would drop too
schema_outside_deps () {
	query "$HISTORIAN_DB" "WITH n AS (SELECT oid FROM pg_namespace WHERE nspname = '$1'),
	o AS (
		SELECT 'pg_class'::regclass AS classid, c.oid AS objid FROM pg_class c JOIN n ON c.relnamespace = n.oid
		UNION ALL SELECT 'pg_proc'::regclass, p.oid FROM pg_proc p JOIN n ON p.pronamespace = n.oid
		UNION ALL SELECT 'pg_type'::regclass, t.oid FROM pg_type t JOIN n ON t.typnamespace = n.oid
		UNION ALL SELECT 'pg_collation'::regclass, l.oid FROM pg_collation l JOIN n ON l.collnamespace = n.oid
		UNION ALL SELECT 'pg_namespace'::regclass, n.oid FROM n
	)
	SELECT DISTINCT pg_describe_object(d.classid, d.objid, 0)
	FROM pg_depend d JOIN o ON d.refclassid = o.classid AND d.refobjid = o.objid
	CROSS JOIN LATERAL (SELECT coalesce((pg_identify_object(d.classid, d.objid, 0)).schema,
		-- column defaults, triggers, rules (views) and policies: the schema of their table
		(SELECT nspname FROM pg_namespace WHERE oid = (SELECT relnamespace FROM pg_class WHERE oid = CASE d.classid
			WHEN 'pg_attrdef'::regclass THEN (SELECT adrelid FROM pg_attrdef WHERE oid = d.objid)
			WHEN 'pg_trigger'::regclass THEN (SELECT tgrelid FROM pg_trigger WHERE oid = d.objid)
			WHEN 'pg_rewrite'::regclass THEN (SELECT ev_class FROM pg_rewrite WHERE oid = d.objid)
			WHEN 'pg_policy'::regclass THEN (SELECT polrelid FROM pg_policy WHERE oid = d.objid)
			END))) AS schema) AS i
	WHERE d.deptype <> 'e'
		-- default privileges IN SCHEMA s go with it
		AND d.classid <> 'pg_default_acl'::regclass
		AND i.schema IS DISTINCT FROM '$1'
		AND i.schema IS DISTINCT FROM 'pg_toast'
	ORDER BY 1"
}

# set by reset_history: SolarNode was running before it, so start it again
RESET_SN_WAS_ACTIVE=

# the EXIT trap of reset_history: start SolarNode again, however it ended
reset_history_end () {
	rc="$1"
	set +e
	trap - EXIT
	# let a waiting ensure run first: SolarNode's start waits for it (Before=)
	exec 9>&-
	SNH_LOCKED=
	if [ -n "$RESET_SN_WAS_ACTIVE" ]; then
		systemctl start "$SN_SERVICE" 2>/dev/null || warn "Could not start SolarNode."
		log "SolarNode started"
	fi
	if [ "$rc" -ne 0 ]; then
		echo "sn-historian: reset-history FAILED; the history may already be deleted. SolarNode has no history DataSource until 'sn-historian ensure' succeeds." >&2 2>/dev/null
	fi
	exit "$rc"
}

# Delete all the history and start over (Matt's steps): stop SolarNode, drop the
# history schemas, run ensure, start SolarNode. The cron jobs stay.
reset_history () {
	yes=
	force=
	for a in "$@"; do
		case "$a" in
			--yes) yes=1 ;;
			--force) force=1 ;;
			*) die "Unknown option '$a'. Usage: sn-historian reset-history --yes [--force]" ;;
		esac
	done
	check_settings
	if [ -z "$yes" ]; then
		die "This deletes all the history in $HISTORIAN_SCHEMAS and restarts SolarNode. Run it again with --yes to go ahead."
	fi
	# stopping SolarNode would kill this command
	if in_sn_cgroup; then
		die "reset-history stops SolarNode, so it can't run from inside SolarNode. Run it over SSH or SolarSSH."
	fi
	if ! ensure_lock; then
		tempfail "Another ensure is still running."
	fi
	# every check before anything is stopped or dropped
	load_sql
	wait_db
	check_server
	for s in $HISTORIAN_SCHEMAS; do
		read_state "$s" || die "Could not read the state of $s."
		if [ "$st_present" != "t" ]; then
			continue
		fi
		if [ "$st_comp" != "$COMPONENT" ] && [ -z "$force" ]; then
			die "$s is not marked as $COMPONENT, so it was left alone. Use --force to drop it anyway."
		fi
		deps="$(schema_outside_deps "$s")" || die "Could not check what depends on $s."
		if [ -n "$deps" ] && [ -z "$force" ]; then
			die "These objects outside $s depend on it and would be dropped too: $(echo "$deps" | paste -s -d ';' - | sed 's/;/; /g'). Use --force to drop them anyway."
		fi
	done

	if sn_active; then
		RESET_SN_WAS_ACTIVE=1
	fi
	trap 'reset_history_end $?' EXIT
	trap 'exit 1' INT TERM
	# a dropped SSH session must not stop it half way
	trap '' HUP
	# with SolarNode running, a start-over silently mixes up datum types and time zones
	if [ -n "$RESET_SN_WAS_ACTIVE" ]; then
		log "stopping SolarNode"
		systemctl stop "$SN_SERVICE"
	fi
	# if a later step fails, SolarNode starts without the historian, not with missing schemas
	pool_unbind_all
	{
		echo "SET client_min_messages = warning;"
		echo "SET lock_timeout = '30s';"
		for s in $HISTORIAN_SCHEMAS; do
			echo "DROP SCHEMA IF EXISTS $s CASCADE;"
		done
	} | psql_pg -d "$HISTORIAN_DB" -1 -f -
	log "history deleted: $HISTORIAN_SCHEMAS"
	ensure_run
}
