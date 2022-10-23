#!/usr/bin/env bash
#
# Local hook for sn-wifi-autoap state changes (between Client and Access Point modes).
#
# Copy to /usr/local/bin/sn-wifi-autoap.sh to be used.
#
# $1 has either "Client" or "AccessPoint"

confFile="/etc/sn-wifi-autoap.conf"

logmsg () {
    [ $debug -eq 0 ] && logger --id=$$ "wifi-autoap (local): $1"
}

[ -f $confFile] && source $confFile || debug=0

case "$1" in
	Client)
		logmsg "Client"
		## Add your code here that runs when the Client WiFi is enabled
		;;
	AccessPoint)
		logmsg "Access Point"
		## Add your code here that runs when the Access Point is enabled
		;;
esac
