# shellcheck shell=sh disable=SC2154
#
# The ensure command: extensions, schemas, cron jobs, DataSource binding and
# restart request.
#
# (SC2154: the st_* values are set by read_state in common.sh)

# pg_cron loaded and ICU available.
check_server () {
	if agg_on && ! preload_has_pg_cron; then
		die "pg_cron is not in shared_preload_libraries. Add it in $PG_CONF and restart $PG_SERVICE (the sn-historian-db-local package does this)."
	fi
	if ! has_icu; then
		die "Postgres has no ICU support, which the historian SQL needs."
	fi
}

# ext_exists DB EXT: true if extension EXT is created in DB
ext_exists () {
	[ -n "$(query "$1" "SELECT 1 FROM pg_extension WHERE extname = '$2'")" ]
}

# true if the historian database has jit = off set (ALTER DATABASE)
jit_off () {
	[ -n "$(query postgres "SELECT 1 FROM pg_db_role_setting s JOIN pg_database d ON d.oid = s.setdatabase WHERE d.datname = '$HISTORIAN_DB' AND s.setrole = 0 AND 'jit=off' = ANY (s.setconfig)")" ]
}

# extensions and jit.
ensure_db () {
	if agg_on && ! ext_exists "$HISTORIAN_DB" aggs_for_vecs; then
		psql_pg -d "$HISTORIAN_DB" -c 'CREATE EXTENSION IF NOT EXISTS aggs_for_vecs' \
			|| { check_db_still_ready "aggs_for_vecs"; die "Creating the aggs_for_vecs extension failed."; }
		log "aggs_for_vecs extension: created"
		CHANGES=$((CHANGES + 1))
	fi
	if ! jit_off; then
		psql_pg -d postgres -c "ALTER DATABASE $HISTORIAN_DB SET jit = off" \
			|| { check_db_still_ready "jit"; die "Setting jit = off failed."; }
		log "$HISTORIAN_DB jit: set off"
		CHANGES=$((CHANGES + 1))
	fi
	if agg_on; then
		CRON_DB="$(query postgres "SHOW cron.database_name")" \
			|| { check_db_still_ready "pg_cron"; die "Could not read cron.database_name."; }
		valid_ident "$CRON_DB" || die "Unexpected cron.database_name '$CRON_DB'."
		if ! ext_exists "$CRON_DB" pg_cron; then
			psql_pg -d "$CRON_DB" -c 'CREATE EXTENSION IF NOT EXISTS pg_cron' \
				|| { check_db_still_ready "pg_cron"; die "Creating the pg_cron extension failed."; }
			log "pg_cron extension: created in $CRON_DB"
			CHANGES=$((CHANGES + 1))
		fi
	fi
}

# print the database's identity: its oid and the Postgres start time
db_identity () {
	query postgres "SELECT d.oid || '@' || pg_postmaster_start_time() FROM pg_database d WHERE d.datname = '$HISTORIAN_DB'" 2>/dev/null || true
}

# check_db_still_ready STEP: exit with a temporary failure (the unit retries) if
# Postgres or the database went away, or was replaced (sn-reset drops and creates
# the database again), since ensure started
check_db_still_ready () {
	if ! { pg_ready && db_ready; } || [ "$(db_identity)" != "$DB_ID" ]; then
		tempfail "Postgres or the $HISTORIAN_DB database went away while ensure was running ($1)."
	fi
}

# Run the init (and agg) SQL as the owner role, with the marker, in one transaction.
create_schema () {
	s="$1"
	a=false
	if agg_on; then
		a=true
	fi
	{
		echo "SET client_min_messages = warning;"
		echo "SET ROLE $HISTORIAN_DB_OWNER;"
		rename_sql "$s" "$HISTORIAN_SQL_DIR/postgres-init.sql"
		echo
		if agg_on; then
			rename_sql "$s" "$HISTORIAN_SQL_DIR/postgres-init-agg.sql"
			echo
		fi
		echo "COMMENT ON SCHEMA $s IS '$(marker "$a")';"
	} | psql_pg -d "$HISTORIAN_DB" -1 -f -
}

# adopt_schema SCHEMA AGG: mark a complete schema that has no marker as ours
adopt_schema () {
	psql_pg -d "$HISTORIAN_DB" -c "COMMENT ON SCHEMA $1 IS '$(marker "$2")'"
}

# schema_refuse SCHEMA MSG: leave SCHEMA alone and fail ensure; the other
# schemas are still checked
schema_refuse () {
	warn "$1: $2"
	summary_add "$1 refused"
	FAILED=1
}

# create, adopt or check each schema.
ensure_schema () {
	s="$1"
	if ! read_state "$s"; then
		check_db_still_ready "reading $s"
		schema_refuse "$s" "could not read the schema state, so it was left alone"
		return 0
	fi
	# missing or empty: create it
	if [ "$st_present" != "t" ] || [ "$st_objects" = "0" ]; then
		if create_schema "$s"; then
			log "$s: created"
			summary_add "$s created"
			SCHEMA_DONE_MS="$(now_ms)"
			echo "$SCHEMA_DONE_MS" >"$SCHEMA_TIME_FILE"
			CHANGES=$((CHANGES + 1))
			GOOD_SCHEMAS="$GOOD_SCHEMAS $s"
		else
			check_db_still_ready "creating $s"
			schema_refuse "$s" "creating the schema failed; nothing was changed"
		fi
		return 0
	fi
	# it has objects: use it only if it is complete
	if [ "$st_base" != "t" ]; then
		schema_refuse "$s" "the schema is incomplete (no dh_datum table or dh_diff_datum aggregate), so it was left alone. If its data is not needed, drop it (DROP SCHEMA $s CASCADE) and run ensure again."
		return 0
	fi
	if agg_on && [ "$st_agg" != "t" ]; then
		schema_refuse "$s" "the schema has no complete aggregate setup, but HISTORIAN_AGG=on. Adding aggregates to an existing schema is not supported yet; set HISTORIAN_AGG=off in $VENDOR_CONF to use it without them."
		return 0
	fi
	# no marker: adopt it; a marker: it must be ours, at this schema version
	if [ -z "$st_comp" ]; then
		a=false
		if [ "$st_agg" = "t" ]; then
			a=true
		fi
		if [ "$st_comment" = "t" ]; then
			warn "$s: replacing its comment with the sn-historian marker"
		fi
		# only a comment changes, so SolarNode needs no restart for it
		adopt_schema "$s" "$a"
		log "$s: adopted"
		summary_add "$s adopted"
		CHANGES=$((CHANGES + 1))
	elif [ "$st_comp" != "$COMPONENT" ]; then
		schema_refuse "$s" "the schema is marked as '$st_comp', not $COMPONENT, so it was left alone."
		return 0
	elif [ "$st_schema" != "$SCHEMA_VERSION" ]; then
		schema_refuse "$s" "the schema is version $st_schema but this SQL is version $SCHEMA_VERSION. Upgrades are not supported yet, so it was left alone."
		return 0
	else
		log "$s: ok"
		summary_add "$s ok"
	fi
	if [ "$st_owner" != "$HISTORIAN_DB_OWNER" ]; then
		warn "$s: owned by $st_owner, not $HISTORIAN_DB_OWNER"
	fi
	GOOD_SCHEMAS="$GOOD_SCHEMAS $s"
}

# the pg_cron job of each schema, and the job run cleanup job.
ensure_cron () {
	for s in $GOOD_SCHEMAS; do
		# only schemas with the aggregate tables
		[ -n "$(query "$HISTORIAN_DB" "SELECT to_regclass('$s.dh_agg_stale')")" ] || continue
		job="solarnode-agg-$s"
		cur="$(query "$CRON_DB" "SELECT schedule || '|' || database || '|' || command FROM cron.job WHERE jobname = '$job'")"
		want="$HISTORIAN_AGG_SCHEDULE|$HISTORIAN_DB|CALL $s.dh_process_agg_stale()"
		# schedule the job if it is missing or differs
		if [ "$cur" != "$want" ]; then
			psql_pg -d "$CRON_DB" -v "historian_db=$HISTORIAN_DB" -v "historian_schema=$s" \
				-v "schedule=$HISTORIAN_AGG_SCHEDULE" <"$HISTORIAN_SQL_DIR/postgres-init-agg-cron.sql" >/dev/null
			log "cron $job: scheduled"
			CHANGES=$((CHANGES + 1))
		fi
	done
	# daily, delete the cron job run details older than 7 days
	if [ -z "$(query "$CRON_DB" "SELECT 1 FROM cron.job WHERE jobname = '$CLEANUP_JOB'")" ]; then
		psql_pg -d "$CRON_DB" -tA >/dev/null <<EOF
SELECT cron.schedule('$CLEANUP_JOB', '$CLEANUP_SCHEDULE', \$\$$CLEANUP_COMMAND\$\$);
EOF
		log "cron $CLEANUP_JOB: scheduled"
		CHANGES=$((CHANGES + 1))
	fi
}

# add node-datum-history to the SolarNode DataSource, keeping its owner and mode.
ensure_pool () {
	cfg="$HISTORIAN_POOL_CFG"
	others="$(pool_bindings | grep -vxF "$cfg" || true)"
	# one binding only: leave it on another DataSource that already has it
	if [ -n "$others" ]; then
		warn "$POOL_KEY is already on $(echo "$others" | tr '\n' ' ')so it was not added to $cfg."
		summary_add "pool bound elsewhere"
		return 0
	fi
	if [ ! -f "$cfg" ]; then
		warn "$cfg not found, so the historian has no DataSource."
		summary_add "pool missing"
		FAILED=1
		return 0
	fi
	if pool_line_bound "$cfg"; then
		summary_add "pool ok"
		return 0
	fi
	if ! grep -Eq '^serviceProperty\.db\s*=' "$cfg"; then
		warn "$cfg has no serviceProperty.db line, so $POOL_KEY was not added."
		summary_add "pool not bound"
		FAILED=1
		return 0
	fi
	# sed -i should keep the owner and mode; if not, use SolarNode's (solar:solar 600)
	before="$(stat -c '%U:%G %a' "$cfg")"
	sed -Ei "$POOL_SED" "$cfg"
	if [ "$(stat -c '%U:%G %a' "$cfg")" != "$before" ]; then
		chown solar:solar "$cfg"
		chmod 600 "$cfg"
	fi
	if ! pool_line_bound "$cfg"; then
		warn "Adding $POOL_KEY to $cfg failed."
		summary_add "pool not bound"
		FAILED=1
		return 0
	fi
	pool_record "$cfg"
	log "pool: $POOL_KEY added to $cfg"
	summary_add "pool bound"
	BIND_CHANGED=1
	CHANGES=$((CHANGES + 1))
}

# print the newest plugin jar change time, in epoch milliseconds (0 if none); the
# change time, as dpkg keeps the packaged modification time
jar_ctime_ms () {
	newest=0
	for f in "$JAR_DIR/$JAR_PREFIX"*.jar; do
		[ -e "$f" ] || continue
		t="$(stat -c %Z "$f")000"
		if [ "$t" -gt "$newest" ]; then
			newest="$t"
		fi
	done
	echo "$newest"
}

# request_restart REASON: record the request time and start the restart unit,
# which restarts SolarNode once apt/dpkg is idle
request_restart () {
	mkdir -p "$RUN_DIR"
	now_ms >"$RESTART_FILE.tmp"
	mv -f "$RESTART_FILE.tmp" "$RESTART_FILE"
	log "SolarNode restart requested ($1)"
	summary_add "SolarNode restart requested"
	if ! systemctl --no-block start "$RESTART_SERVICE"; then
		warn "Could not start $RESTART_SERVICE; restart SolarNode to load the historian."
	fi
}

# Restart SolarNode, without waiting for it, if the running plugin must reload. A
# stopped SolarNode loads everything when it starts.
ensure_restart () {
	if ! sn_active; then
		return 0
	fi
	started="$(unit_start_ms "$SN_SERVICE")"
	# also a schema an earlier run created, if that run stopped before here
	created="$(cat "$SCHEMA_TIME_FILE" 2>/dev/null || true)"
	case "$created" in
		''|*[!0-9]*) created="$SCHEMA_DONE_MS" ;;
	esac
	if [ -n "$BIND_CHANGED" ]; then
		request_restart "DataSource binding changed"
	# a schema created after SolarNode started (in any order, e.g. during sn-reset),
	# while a DataSource has the historian: its caches are stale
	elif [ -n "$created" ] && [ "$started" -lt "$created" ] \
			&& [ -n "$(pool_bindings)" ]; then
		request_restart "schema created while SolarNode was running"
	elif [ -n "$FAILED" ]; then
		return 0
	# start time unknown: leave it
	elif [ "$started" -le 0 ]; then
		return 0
	# A reinstall gives the same jar a new ctime, so compare the content too.
	# jar older than the SolarNode start: loaded; newer and changed: reload
	elif [ "$(jar_ctime_ms)" -le "$started" ]; then
		jar_loaded_record
	elif ! jar_loaded; then
		request_restart "plugin installed after SolarNode started"
	fi
}

# ensure_lock [SECONDS]: take the ensure lock (one ensure at a time: the unit, a
# manual run, disable and reset-history), waiting up to SECONDS (default 100).
# Fails on a timeout. A second call in the same process does nothing, as opening
# the lock file again would release the lock.
ensure_lock () {
	if [ -n "$SNH_LOCKED" ]; then
		return 0
	fi
	mkdir -p "$RUN_DIR"
	exec 9>"$RUN_DIR/ensure.lock"
	if ! flock -w "${1:-100}" 9; then
		return 1
	fi
	SNH_LOCKED=1
}

ensure () {
	check_settings
	if ! ensure_lock; then
		tempfail "Another ensure is still running."
	fi
	ensure_run
}

# Run the ensure steps; the caller holds the ensure lock. Exit 1 on an error or a
# refused schema, 75 if Postgres or the database was not ready (the unit retries).
ensure_run () {
	load_sql
	wait_db
	DB_ID="$(db_identity)"
	check_server

	ensure_db

	for s in $HISTORIAN_SCHEMAS; do
		ensure_schema "$s"
	done

	if agg_on; then
		ensure_cron
	fi

	# bind last, and only when every schema is usable
	if [ -z "$FAILED" ]; then
		ensure_pool
	else
		bound="$(pool_bindings | tr '\n' ' ')"
		if [ -n "$bound" ]; then
			warn "$POOL_KEY is already on ${bound}and was left in place, but the historian cannot use a refused schema until it is fixed."
		else
			warn "Not adding $POOL_KEY to the SolarNode DataSource, as a schema is not usable."
		fi
	fi

	# a database replaced while ensure ran (sn-reset) may have lost what it did
	check_db_still_ready "finishing"
	ensure_restart

	if [ -n "$FAILED" ]; then
		echo "sn-historian: ensure FAILED: $SUMMARY" >&2
		exit 1
	fi
	if [ "$CHANGES" -eq 0 ]; then
		log "ensure ok, no changes: $SUMMARY"
	else
		log "ensure ok, $CHANGES change(s): $SUMMARY"
	fi
}
