#!/bin/sh -ex

PSQL_CONN_ARGS="${PSQL_CONN_ARGS:-}"
PG_DB_OWNER="${PG_DB_OWNER:-solarnode}"
PG_DB_OWNER_PASSWORD="${PG_DB_OWNER_PASSWORD:-solarnode}"
PG_DB="${PG_DB:-solarnode}"
PG_ADMIN_USER="${PG_ADMIN_USER:-postgres}"
PG_ADMIN_DB="${PG_ADMIN_DB:-postgres}"
PG_TEMPLATE_DB="${PG_TEMPLATE_DB:-template0}"

# Check that PostgreSQL is available
type psql >/dev/null || { echo "psql command not found."; exit 1; }

setup_db_user () {
	# Check that database user exists
	if [ -z $(su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -P pager=off -XtAc "'"'"SELECT 1 FROM pg_roles WHERE rolname='$PG_DB_OWNER'"'"') ]; then
		echo "Creating SolarNode Postgres user $PG_DB_OWNER"
		su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -tXAc 'CREATE USER $PG_DB_OWNER WITH LOGIN'"
		su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -tXAc "'"'"ALTER USER $PG_DB_OWNER WITH PASSWORD '$PG_DB_OWNER_PASSWORD'"'"'
	fi
}

setup_db () {
	# Check that database user exists
	if [ -z $(su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -P pager=off -XtAc "'"'"SELECT 1 FROM pg_database WHERE datname='$PG_DB'"'"') ]; then
		echo "Creating SolarNode Postgres database $PG_DB"
		su $PG_ADMIN_USER -c "psql $PSQL_CONN_ARGS -U $PG_ADMIN_USER -d $PG_ADMIN_DB -P pager=off -XtAc "'"'"CREATE DATABASE $PG_DB WITH ENCODING='UTF8' OWNER=$PG_DB_OWNER TEMPLATE=$PG_TEMPLATE_DB LC_COLLATE='C' LC_CTYPE='C'"'"'
	fi
}
