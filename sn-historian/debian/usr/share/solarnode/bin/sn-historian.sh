#!/bin/sh
#
# SolarNode historian database helper. Sets up and checks the JDBC DatumHistorian
# schemas in the local SolarNode Postgres database.
#
# Run "sn-historian.sh help" for the commands.

# for shellcheck -x: the sourced files are in ../sn-historian/
# shellcheck source-path=SCRIPTDIR/../sn-historian

set -eu

# The command's code, by job, in ../sn-historian/ next to this script's real path
# (/var/lib/solarnode/bin/sn-historian is a symlink to it).
SNH_LIB="$(readlink -f "$(dirname "$(readlink -f "$0")")/../sn-historian")"
readonly SNH_LIB
for snh_lib in common ensure restart status print-sql preflight; do
	if [ ! -r "$SNH_LIB/$snh_lib.sh" ]; then
		echo "sn-historian: ERROR: $SNH_LIB/$snh_lib.sh not found; reinstall sn-historian." >&2
		exit 1
	fi
done

. "$SNH_LIB/common.sh"
. "$SNH_LIB/ensure.sh"
. "$SNH_LIB/restart.sh"
. "$SNH_LIB/status.sh"
. "$SNH_LIB/print-sql.sh"
. "$SNH_LIB/preflight.sh"

# usage [CODE]: print the commands and exit with CODE (default 1)
usage () {
	cat <<EOF
Usage: $0 <command>

Commands:
  ensure             create or check the history schemas, cron jobs and DataSource binding
  status             show the historian database state; exit 1 if anything is wrong
  print-sql          print the commands that ensure runs, for a manual setup
  preflight          warn about things that stop the historian from working
  restart-solarnode  restart SolarNode once dpkg is idle (run by $RESTART_SERVICE)
EOF
	exit "${1:-1}"
}

# require_root CMD: exit unless run as root
require_root () {
	if [ "$(id -u)" -ne 0 ]; then
		die "$1 must be run as root."
	fi
}

# from /, so psql run as postgres does not warn about an unreadable directory
cd /

# help and print-sql run as any user; the rest need root
cmd="${1:-help}"
case "$cmd" in
	ensure|status|preflight|restart-solarnode)
		require_root "$cmd"
		;;
esac

case "$cmd" in
	ensure)
		ensure
		;;

	status)
		status
		;;

	print-sql)
		print_sql
		;;

	preflight)
		preflight
		;;

	restart-solarnode)
		restart_solarnode
		;;

	help|-h|--help)
		usage 0
		;;

	*)
		usage 1
		;;
esac
