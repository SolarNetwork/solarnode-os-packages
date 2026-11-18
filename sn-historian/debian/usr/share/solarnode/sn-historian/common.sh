# shellcheck shell=sh disable=SC2034
#
# (SC2034: these are used by the other files)

CONF="/usr/share/solarnode/default/sn-historian"
VENDOR_CONF="/etc/default/sn-historian"

# the packaged defaults, then the node's overrides
if [ -e "$CONF" ]; then
	# shellcheck source=/dev/null
	. "$CONF"
fi
if [ -e "$VENDOR_CONF" ]; then
	# shellcheck source=/dev/null
	. "$VENDOR_CONF"
fi

# the defaults for anything the settings files and environment leave unset
HISTORIAN_DB="${HISTORIAN_DB:-solarnode}"
HISTORIAN_DB_OWNER="${HISTORIAN_DB_OWNER:-solarnode}"
HISTORIAN_SCHEMAS="${HISTORIAN_SCHEMAS:-solarhist solaruhist}"
HISTORIAN_AGG="${HISTORIAN_AGG:-on}"
HISTORIAN_AGG_SCHEDULE="${HISTORIAN_AGG_SCHEDULE:-* * * * *}"
HISTORIAN_SQL_DIR="${HISTORIAN_SQL_DIR:-/usr/share/solarnode/datumhistorian-jdbc/sql}"
HISTORIAN_POOL_CFG="${HISTORIAN_POOL_CFG:-/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-solarnode-postgres.cfg}"
HISTORIAN_PG_WAIT="${HISTORIAN_PG_WAIT:-60}"

# fixed units, paths and names
PG_SERVICE="postgresql@17-main.service"
PG_CONF="/etc/postgresql/17/main/postgresql.conf"
SN_SERVICE="solarnode.service"
RESTART_SERVICE="sn-historian-restart-solarnode.service"
RUN_DIR="/run/sn-historian"
RESTART_FILE="$RUN_DIR/restart-requested"
STATE_DIR="/var/lib/sn-historian"
# the plugin jar(s) SolarNode last loaded, as sha256sum lines
JAR_STATE="$STATE_DIR/jar-loaded"
SERVICES_DIR="/etc/solarnode/services"
JAR_DIR="/var/lib/solarnode/app/main"
EXAMPLE_DIR="/usr/share/solarnode/example"
JAR_PREFIX="net.solarnetwork.node.datumhistorian.jdbc"
COMPONENT="datumhistorian-jdbc"
POOL_KEY="node-datum-history"
CLEANUP_JOB="cron-job-run-details-cleanup"
RESTART_WAIT=600
# seconds apt/dpkg must stay idle before the SolarNode restart
RESTART_SETTLE=10
EX_TEMPFAIL=75

# the SolarNode DataSource sed from the plugin README
POOL_SED='/^serviceProperty\.db\s*=/{/node-datum-history/b;s/$/, node-datum-history/}'
# the shared_preload_libraries sed from the plugin README
PRELOAD_SED="/^#?shared_preload_libraries\\s*=/{/pg_cron/b;s/^#?(shared_preload_libraries\\s*=\\s*')([^']*)'/\\1\\2,pg_cron'/;s/',pg_cron'/'pg_cron'/}"

# set by load_sql
SCHEMA_VERSION=
SQL_SHA12=
# set by the ensure steps
CRON_DB=
CHANGES=0
FAILED=
GOOD_SCHEMAS=
SCHEMA_CHANGED=
BIND_CHANGED=
SUMMARY=

# log MSG: print an info line
log () {
	echo "sn-historian: $*"
}

# warn MSG: print a warning to stderr
warn () {
	echo "sn-historian: WARNING: $*" >&2
}

# die MSG: print an error and exit 1
die () {
	echo "sn-historian: ERROR: $*" >&2
	exit 1
}

# tempfail MSG: exit 75, which sn-historian-ensure.service retries
tempfail () {
	echo "sn-historian: $*" >&2
	exit "$EX_TEMPFAIL"
}

# summary_add TEXT: add TEXT to the one-line ensure summary
summary_add () {
	SUMMARY="${SUMMARY:+$SUMMARY, }$*"
}

# true if HISTORIAN_AGG is on
agg_on () {
	[ "$HISTORIAN_AGG" = "on" ]
}

# valid_ident NAME: true if NAME is a plain lower-case identifier, safe to put
# in SQL unquoted
valid_ident () {
	case "$1" in
		''|[!a-z_]*|*[!a-z0-9_]*) return 1 ;;
	esac
	return 0
}

# exit if a setting is invalid, as the settings go into SQL as they are
check_settings () {
	for v in "$HISTORIAN_DB" "$HISTORIAN_DB_OWNER" $HISTORIAN_SCHEMAS; do
		valid_ident "$v" || die "Invalid name '$v' in the sn-historian settings."
	done
	[ -n "$HISTORIAN_SCHEMAS" ] || die "HISTORIAN_SCHEMAS is empty."
	case "$HISTORIAN_AGG" in
		on|off) ;;
		*) die "HISTORIAN_AGG must be on or off, not '$HISTORIAN_AGG'." ;;
	esac
	case "$HISTORIAN_AGG_SCHEDULE" in
		*\'*) die "HISTORIAN_AGG_SCHEDULE must not contain a quote." ;;
	esac
	case "$HISTORIAN_PG_WAIT" in
		''|*[!0-9]*) die "HISTORIAN_PG_WAIT must be a number of seconds." ;;
	esac
}

# Run psql as the postgres OS user, over the local socket.
psql_pg () {
	runuser -u postgres -- psql -X -q -v ON_ERROR_STOP=1 "$@"
}

# query DB SQL: print the result rows, with fields separated by |
query () {
	psql_pg -d "$1" -tA -c "$2"
}

# print the current time, in epoch milliseconds
now_ms () {
	date +%s%3N
}

# manifest_get KEY: print KEY's value from the SQL MANIFEST, without quotes
manifest_get () {
	sed -n "s/^$1=//p" "$HISTORIAN_SQL_DIR/MANIFEST" | head -n 1 | tr -d "\"'"
}

# Check the SQL files are present and read the MANIFEST.
load_sql () {
	for f in postgres-init.sql postgres-init-agg.sql postgres-init-agg-cron.sql MANIFEST; do
		if [ ! -r "$HISTORIAN_SQL_DIR/$f" ]; then
			die "$HISTORIAN_SQL_DIR/$f not found. Install solarnode-app-datumhistorian-jdbc (>= 1.0.0-2)."
		fi
	done
	SCHEMA_VERSION="$(manifest_get SCHEMA_VERSION)"
	SQL_SHA12="$(manifest_get SQL_SHA | cut -c 1-12)"
	case "$SCHEMA_VERSION" in
		''|*[!0-9]*) die "No SCHEMA_VERSION in $HISTORIAN_SQL_DIR/MANIFEST." ;;
	esac
	case "$SQL_SHA12" in
		''|*[!0-9a-f]*) die "No SQL_SHA in $HISTORIAN_SQL_DIR/MANIFEST." ;;
	esac
}

# marker AGG: the schema comment that ensure writes
marker () {
	printf '{"component":"%s","schema":%s,"agg":%s,"sql":"%s"}' \
		"$COMPONENT" "$SCHEMA_VERSION" "$1" "$SQL_SHA12"
}

# rename_sql SCHEMA FILE: print FILE with the solarhist schema renamed (README sed)
rename_sql () {
	if [ "$1" = "solarhist" ]; then
		cat "$2"
	else
		sed "s/\\bsolarhist/$1/g" "$2"
	fi
}

# true if Postgres accepts connections
pg_ready () {
	pg_isready -q >/dev/null 2>&1
}

# true if the historian database and its owner role both exist
db_ready () {
	[ "$(query postgres "SELECT (SELECT count(*) FROM pg_roles WHERE rolname = '$HISTORIAN_DB_OWNER') + (SELECT count(*) FROM pg_database WHERE datname = '$HISTORIAN_DB')" 2>/dev/null)" = "2" ]
}

# Step 0: wait for Postgres, and for the database and role that
# solarnode-app-db-postgres.service creates.
wait_db () {
	deadline=$(( $(date +%s) + HISTORIAN_PG_WAIT ))
	while ! { pg_ready && db_ready; }; do
		if [ "$(date +%s)" -ge "$deadline" ]; then
			if ! pg_ready; then
				tempfail "Postgres is not ready after ${HISTORIAN_PG_WAIT}s."
			fi
			tempfail "The $HISTORIAN_DB database or $HISTORIAN_DB_OWNER role is missing after ${HISTORIAN_PG_WAIT}s (solarnode-app-db-postgres.service creates them)."
		fi
		sleep 2
	done
}

# true if the running Postgres has pg_cron in shared_preload_libraries (a
# postgresql.conf change counts only after a restart)
preload_has_pg_cron () {
	case ",$(query postgres "SHOW shared_preload_libraries" | tr -d ' "')," in
		*,pg_cron,*) return 0 ;;
	esac
	return 1
}

# true if Postgres has ICU collations, which the historian SQL needs
has_icu () {
	[ -n "$(query postgres "SELECT 1 FROM pg_collation WHERE collprovider = 'i' LIMIT 1")" ]
}

# schema_state SCHEMA: print one line,
# present|base|agg|objects|owner|component|schema|agg|sql|comment
# where base and agg are the plugin's complete-install checks
# (SelectHistorianFeatures), and component..sql come from the schema comment.
# A comment that is not a JSON object reads as no marker.
schema_state () {
	s="$1"
	query "$HISTORIAN_DB" "SELECT n.oid IS NOT NULL
	, to_regclass('$s.dh_datum') IS NOT NULL
		AND to_regprocedure('$s.dh_diff_datum($s.dh_datum_rec)') IS NOT NULL
	, to_regclass('$s.dh_agg_hourly') IS NOT NULL
		AND to_regclass('$s.dh_agg_daily') IS NOT NULL
		AND to_regclass('$s.dh_agg_monthly') IS NOT NULL
		AND to_regprocedure('$s.dh_rollup_datum_for_time_span_slots(integer,timestamp with time zone,timestamp with time zone,integer,interval)') IS NOT NULL
		AND to_regprocedure('$s.dh_count_datum_time_span_slots(integer,timestamp with time zone,timestamp with time zone,integer)') IS NOT NULL
	, COALESCE((SELECT count(*) FROM pg_class WHERE relnamespace = n.oid)
		+ (SELECT count(*) FROM pg_proc WHERE pronamespace = n.oid)
		+ (SELECT count(*) FROM pg_type WHERE typnamespace = n.oid)
		+ (SELECT count(*) FROM pg_collation WHERE collnamespace = n.oid), 0)
	, COALESCE(pg_get_userbyid(n.nspowner), '')
	, COALESCE(m.d->>'component', '')
	, COALESCE(m.d->>'schema', '')
	, COALESCE(m.d->>'agg', '')
	, COALESCE(m.d->>'sql', '')
	, m.c IS NOT NULL
FROM (SELECT 1) AS x
LEFT JOIN pg_namespace n ON n.nspname = '$s'
LEFT JOIN LATERAL (
	SELECT c, CASE WHEN pg_input_is_valid(c, 'jsonb') AND jsonb_typeof(c::jsonb) = 'object' THEN c::jsonb END AS d
	FROM obj_description(n.oid, 'pg_namespace') AS c
) AS m ON TRUE"
}

# read_state SCHEMA: set the st_* variables from schema_state; fails if the query fails
read_state () {
	_st="$(schema_state "$1")" || return 1
	IFS='|' read -r st_present st_base st_agg st_objects st_owner st_comp st_schema st_magg st_sql st_comment <<EOF
$_st
EOF
}

# pool_line_bound CFG: true if CFG's serviceProperty.db line has node-datum-history
pool_line_bound () {
	grep -E '^serviceProperty\.db\s*=' "$1" 2>/dev/null | grep -q "$POOL_KEY"
}

# print the SolarNode DataSource configurations that carry node-datum-history
pool_bindings () {
	for f in "$SERVICES_DIR"/*.cfg; do
		if [ -f "$f" ] && pool_line_bound "$f"; then
			echo "$f"
		fi
	done
}

# true if SolarNode is running
sn_active () {
	systemctl --quiet is-active "$SN_SERVICE" 2>/dev/null
}

# unit_start_ms UNIT: when UNIT last became active, in epoch milliseconds (0 if unknown)
unit_start_ms () {
	ts="$(systemctl show -p ActiveEnterTimestamp --value --timestamp=us+utc "$1" 2>/dev/null)" || ts=
	# older systemd has no --timestamp option
	if [ -z "$ts" ]; then
		ts="$(systemctl show -p ActiveEnterTimestamp --value "$1" 2>/dev/null)" || ts=
	fi
	if [ -n "$ts" ] && [ "$ts" != "n/a" ]; then
		date -d "$ts" +%s%3N 2>/dev/null || echo 0
	else
		echo 0
	fi
}

# print the sha256sum lines of the plugin jar(s), empty if none
jar_fingerprint () {
	(
		# relative names, so the lines do not depend on JAR_DIR (cd in a subshell)
		cd "$JAR_DIR" 2>/dev/null || exit 0
		for f in "$JAR_PREFIX"*.jar; do
			if [ -e "$f" ]; then
				sha256sum "$f"
			fi
		done
	) || true
}

# true if SolarNode already loaded the plugin jar(s) that are installed now
jar_loaded () {
	[ -r "$JAR_STATE" ] && [ "$(cat "$JAR_STATE")" = "$(jar_fingerprint)" ]
}

# record the installed plugin jar(s) as the ones SolarNode loaded
jar_loaded_record () {
	if jar_loaded; then
		return 0
	fi
	mkdir -p "$STATE_DIR"
	# write, then rename, so a reader never sees half a file
	jar_fingerprint >"$JAR_STATE.tmp"
	mv -f "$JAR_STATE.tmp" "$JAR_STATE"
}
