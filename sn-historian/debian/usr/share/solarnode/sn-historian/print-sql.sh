# shellcheck shell=sh
#
# The print-sql command.

# Print the ensure setup as shell commands, for a manual setup. Needs no root and
# no database; uses placeholders if the SQL package is missing.
print_sql () {
	check_settings
	sha="<sql sha>"
	ver="<schema version>"
	if [ -r "$HISTORIAN_SQL_DIR/MANIFEST" ]; then
		sha="$(manifest_get SQL_SHA | cut -c 1-12)"
		ver="$(manifest_get SCHEMA_VERSION)"
	fi
	a=false
	if agg_on; then
		a=true
	fi
	db="$HISTORIAN_DB"
	owner="$HISTORIAN_DB_OWNER"
	conn="psql -h localhost -U $owner -d $db -v ON_ERROR_STOP=1 -1"
	cat <<EOF
# The setup that the sn-historian-db-local package and "sn-historian ensure" do,
# as commands (from the plugin README). Run them from the SQL directory:
cd $HISTORIAN_SQL_DIR

EOF
	if agg_on; then
		cat <<EOF
# add pg_cron to shared_preload_libraries (if not already there) and the historian
# settings, then restart Postgres
sudo sed -Ei "$PRELOAD_SED" \\
$PG_CONF
EOF
		if [ -r "$EXAMPLE_DIR/postgres-historian.conf" ]; then
			echo "sudo tee ${PG_CONF%/*}/conf.d/solarnode-historian.conf <<'EOT'"
			grep -Ev '^[[:space:]]*(#|$)' "$EXAMPLE_DIR/postgres-historian.conf"
			echo "EOT"
		else
			cat <<EOF
# the plugin README's minimum settings (sn-historian-db-local also limits the
# parallel workers and turns on cron.log_run)
sudo tee ${PG_CONF%/*}/conf.d/solarnode-historian.conf <<'EOT'
max_worker_processes = 16
cron.use_background_workers = on
EOT
EOF
		fi
		if [ -r "$EXAMPLE_DIR/postgres-historian-sizing.conf" ]; then
			echo "# optional: the small-device sizing that sn-historian-db-local installs"
			echo "sudo tee ${PG_CONF%/*}/conf.d/zz-solarnode-historian-sizing.conf <<'EOT'"
			grep -Ev '^[[:space:]]*(#|$)' "$EXAMPLE_DIR/postgres-historian-sizing.conf"
			echo "EOT"
		fi
		cat <<EOF
sudo systemctl restart ${PG_SERVICE%.service}

sudo -u postgres psql -d $db -c 'CREATE EXTENSION IF NOT EXISTS aggs_for_vecs'
EOF
	fi
	echo "sudo -u postgres psql -d $db -c 'ALTER DATABASE $db SET jit = off'"
	for s in $HISTORIAN_SCHEMAS; do
		echo
		echo "# create the $s schema, as the $owner role"
		if [ "$s" = "solarhist" ]; then
			echo "$conn -f postgres-init.sql"
			if agg_on; then
				echo "$conn -f postgres-init-agg.sql"
			fi
		else
			printf '%s\n' "sed 's/\\bsolarhist/$s/g' postgres-init.sql |$conn"
			if agg_on; then
				printf '%s\n' "sed 's/\\bsolarhist/$s/g' postgres-init-agg.sql |$conn"
			fi
		fi
		echo "$conn -c \"COMMENT ON SCHEMA $s IS '{\\\"component\\\":\\\"$COMPONENT\\\",\\\"schema\\\":$ver,\\\"agg\\\":$a,\\\"sql\\\":\\\"$sha\\\"}'\""
	done
	if agg_on; then
		echo
		echo "# schedule the aggregate jobs, as the postgres role"
		echo "sudo -u postgres psql -c 'CREATE EXTENSION IF NOT EXISTS pg_cron'"
		for s in $HISTORIAN_SCHEMAS; do
			echo "sudo -u postgres psql -v historian_db=$db -v historian_schema=$s -v 'schedule=$HISTORIAN_AGG_SCHEDULE' <postgres-init-agg-cron.sql"
		done
		echo "sudo -u postgres psql -c \"SELECT cron.schedule('$CLEANUP_JOB', '30 3 * * *',\\\$\\\$DELETE FROM cron.job_run_details WHERE end_time < now() - INTERVAL 'P7D'\\\$\\\$);\""
	fi
	cat <<EOF

# let the historian use the SolarNode DataSource, then restart SolarNode
sudo sed -Ei '$POOL_SED' \\
$HISTORIAN_POOL_CFG
sudo systemctl restart ${SN_SERVICE%.service}
EOF
}
