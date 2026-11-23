#!/usr/bin/env sh
#
# Helper script for SolarNodeOS reset support.
#
# A reset deletes the SolarNode database, and with it the security token Grafana uses, so the
# token is removed from Grafana whether or not -a (app only) is passed. Grafana's own data and
# admin password are kept.

DIR="${DIR:-/etc/sn-historian-grafana}"

while getopts ":a" opt; do
	case $opt in
		a) ;;
		*)
			echo "Unknown option '$OPTARG'." 1>&2
			exit 1
	esac
done

for f in token secret; do
	if [ -s "$DIR/$f" ]; then
		: >"$DIR/$f"
	fi
done
echo 'Removed the Grafana historian token.'
systemctl try-restart grafana-server.service || true
