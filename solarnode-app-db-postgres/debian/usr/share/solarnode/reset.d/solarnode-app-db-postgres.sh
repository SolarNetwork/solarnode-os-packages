#!/usr/bin/env sh
#
# Helper script for SolarNodeOS reset support.

PSQL_CONN_ARGS="${PSQL_CONN_ARGS:-}"
PG_DB="${PG_DB:-solarnode}"
PG_ADMIN_USER="${PG_ADMIN_USER:-postgres}"
PG_ADMIN_DB="${PG_ADMIN_DB:-postgres}"
PG_TEMPLATE_DB="${PG_TEMPLATE_DB:-template0}"

# Check that PostgreSQL is available
type psql >/dev/null || { echo "psql command not found."; exit 1; }

drop_db () {
	# Drop database if it exists
	if [ -n $(su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -P pager=off -XtAc "'"'"SELECT 1 FROM pg_database WHERE datname='$PG_DB'"'"') ]; then
		echo "Dropping SolarNode Postgres database $PG_DB"
		su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -P pager=off -XtAc "'"'"DROP DATABASE IF EXISTS $PG_DB WITH (FORCE)"'"' >/dev/null
		systemctl restart postgresql@17-main || true
	fi
}

drop_db
