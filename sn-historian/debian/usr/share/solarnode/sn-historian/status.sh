# shellcheck shell=sh disable=SC2154
#
# The status command.
#
# (SC2154: the st_* values are set by read_state in common.sh)

# status output helpers
# the number of problem lines printed so far
STATUS_PROBLEMS=0

# st_ok LABEL VALUE: print a status line
st_ok () {
	printf '  %-30s %s\n' "$1" "$2"
}

# st_bad LABEL VALUE: print a status line marked as a problem, and count it
st_bad () {
	printf '  %-30s %s  <-- PROBLEM\n' "$1" "$2"
	STATUS_PROBLEMS=$((STATUS_PROBLEMS + 1))
}

# the SQL version that solarnode-app-datumhistorian-jdbc installed
status_sql () {
	if [ ! -r "$HISTORIAN_SQL_DIR/MANIFEST" ]; then
		st_bad "SQL" "$HISTORIAN_SQL_DIR/MANIFEST not found"
	else
		st_ok "SQL" "schema $(manifest_get SCHEMA_VERSION), sql $(manifest_get SQL_SHA | cut -c 1-12)"
	fi
}

# status_schema SCHEMA: completeness, owner and marker of SCHEMA
status_schema () {
	s="$1"
	if ! read_state "$s" 2>/dev/null; then
		st_bad "schema $s" "could not read its state"
		return 0
	fi
	if [ "$st_present" != "t" ]; then
		st_bad "schema $s" "missing"
		return 0
	fi
	desc="base $( [ "$st_base" = "t" ] && echo ok || echo INCOMPLETE ), agg $( [ "$st_agg" = "t" ] && echo ok || echo no )"
	desc="$desc, owner $st_owner"
	if [ -n "$st_comp" ]; then
		desc="$desc, marker schema $st_schema agg $st_magg sql $st_sql"
	else
		desc="$desc, no marker"
	fi
	# a problem if incomplete, or marked by another component or schema version
	if [ "$st_base" != "t" ] || { agg_on && [ "$st_agg" != "t" ]; } \
			|| { [ -n "$st_comp" ] && [ "$st_comp" != "$COMPONENT" ]; } \
			|| { [ -n "$st_comp" ] && [ -n "$SCHEMA_VERSION" ] && [ "$st_schema" != "$SCHEMA_VERSION" ]; }; then
		st_bad "schema $s" "$desc"
	else
		st_ok "schema $s" "$desc"
	fi
}

# each aggregate job's schedule and last run, and the cleanup job
status_cron () {
	for s in $HISTORIAN_SCHEMAS; do
		job="solarnode-agg-$s"
		row="$(query "$CRON_DB" "SELECT j.schedule || '|' || CASE WHEN j.active THEN 't' ELSE 'f' END || '|' || j.database || '|' || COALESCE((SELECT d.status || ' at ' || to_char(d.start_time, 'YYYY-MM-DD HH24:MI:SS') FROM cron.job_run_details d WHERE d.jobid = j.jobid ORDER BY d.start_time DESC LIMIT 1), 'never run') FROM cron.job j WHERE j.jobname = '$job'" 2>/dev/null || true)"
		if [ -z "$row" ]; then
			st_bad "cron $job" "missing"
			continue
		fi
		IFS='|' read -r sched active jdb last <<EOF
$row
EOF
		desc="'$sched' in $jdb, last: $last"
		case "$active|$last" in
			t\|failed*) st_bad "cron $job" "$desc" ;;
			t\|*) st_ok "cron $job" "$desc" ;;
			*) st_bad "cron $job" "inactive, $desc" ;;
		esac
	done
	if [ -n "$(query "$CRON_DB" "SELECT 1 FROM cron.job WHERE jobname = '$CLEANUP_JOB'" 2>/dev/null || true)" ]; then
		st_ok "cron $CLEANUP_JOB" "present"
	else
		st_bad "cron $CLEANUP_JOB" "missing"
	fi
}

# Print the historian state, one line per part; return 1 if any part has a problem.
status () {
	check_settings
	# if known, to check the schema markers against; status runs without the SQL too
	SCHEMA_VERSION="$( [ -r "$HISTORIAN_SQL_DIR/MANIFEST" ] && manifest_get SCHEMA_VERSION || true)"
	echo "sn-historian status (database $HISTORIAN_DB, schemas $HISTORIAN_SCHEMAS, agg $HISTORIAN_AGG)"
	status_sql
	if ! pg_ready; then
		st_bad "Postgres" "not ready"
	elif ! db_ready; then
		st_ok "Postgres" "ready"
		st_bad "database" "$HISTORIAN_DB or role $HISTORIAN_DB_OWNER missing"
	else
		st_ok "Postgres" "$(query postgres "SHOW server_version" || true)"
		st_ok "database" "$HISTORIAN_DB (owner $(query postgres "SELECT pg_get_userbyid(datdba) FROM pg_database WHERE datname = '$HISTORIAN_DB'" || true))"
		if has_icu; then
			st_ok "ICU" "yes"
		else
			st_bad "ICU" "no"
		fi
		if preload_has_pg_cron; then
			st_ok "pg_cron preload" "in effect"
		elif agg_on; then
			st_bad "pg_cron preload" "not in effect (restart $PG_SERVICE?)"
		else
			st_ok "pg_cron preload" "not in effect"
		fi
		jit="$(query "$HISTORIAN_DB" "SHOW jit" || true)"
		if [ "$jit" = "off" ]; then
			st_ok "jit" "off"
		else
			st_bad "jit" "$jit"
		fi
		st_ok "shared_buffers" "$(query postgres "SHOW shared_buffers" || true)"
		v="$(query "$HISTORIAN_DB" "SELECT extversion FROM pg_extension WHERE extname = 'aggs_for_vecs'" || true)"
		if [ -n "$v" ]; then
			st_ok "aggs_for_vecs" "$v"
		elif agg_on; then
			st_bad "aggs_for_vecs" "missing in $HISTORIAN_DB"
		fi
		# empty if pg_cron is not loaded
		CRON_DB="$(query postgres "SELECT current_setting('cron.database_name', TRUE)" || true)"
		v=
		if [ -n "$CRON_DB" ]; then
			v="$(query "$CRON_DB" "SELECT extversion FROM pg_extension WHERE extname = 'pg_cron'" || true)"
		fi
		if [ -n "$v" ]; then
			st_ok "pg_cron" "$v in $CRON_DB"
		elif agg_on; then
			st_bad "pg_cron" "extension missing"
		fi
		for s in $HISTORIAN_SCHEMAS; do
			status_schema "$s"
		done
		if agg_on && [ -n "$v" ]; then
			status_cron
		fi
	fi
	bindings="$(pool_bindings)"
	case "$(echo "$bindings" | grep -c .)" in
		0) st_bad "DataSource" "no $POOL_KEY binding in $SERVICES_DIR" ;;
		1) st_ok "DataSource" "$bindings" ;;
		*) st_bad "DataSource" "more than one: $(echo "$bindings" | tr '\n' ' ')" ;;
	esac
	jars="$(ls "$JAR_DIR/$JAR_PREFIX"*.jar 2>/dev/null || true)"
	if [ -n "$jars" ]; then
		st_ok "plugin" "$(echo "$jars" | sed 's|.*/||' | tr '\n' ' ')"
	else
		st_bad "plugin" "no $JAR_PREFIX jar in $JAR_DIR"
	fi
	if sn_active; then
		st_ok "SolarNode" "active since $(systemctl show -p ActiveEnterTimestamp --value "$SN_SERVICE")"
	else
		st_bad "SolarNode" "$(systemctl is-active "$SN_SERVICE" 2>/dev/null || true)"
	fi
	if [ -s "$RESTART_FILE" ]; then
		st_ok "SolarNode restart" "pending"
	fi
	if [ "$STATUS_PROBLEMS" -eq 0 ]; then
		echo "sn-historian: ok"
		return 0
	fi
	echo "sn-historian: $STATUS_PROBLEMS problem(s)"
	return 1
}
