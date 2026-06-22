#!/usr/bin/env sh

AUTO_RECONNECT_ENABLE=0
NET_INTERFACE="wlan0"
PING_HOST="192.168.91.1"

CONF="/usr/share/solarnode/default/sn-pypowerwall"
VENDOR_CONF="/etc/default/sn-pypowerwall"

if [ -e "$CONF" ]; then
	. "$CONF"
fi
if [ -e "$VENDOR_CONF" ]; then
	. "$VENDOR_CONF"
fi

while getopts ":f" opt; do
	case $opt in
		f) AUTO_RECONNECT_ENABLE=1;;
		*)
			echo "Unknown argument: ${OPTARG}"
			exit 1
	esac
done
shift $(($OPTIND - 1))

if [ ${AUTO_RECONNECT_ENABLE} -eq 0 ]; then
	exit 0;
fi

# Get status of network neterface, e.g. UP, DOWN, UNKNOWN
iface_status="$(ip -br link show 2>/dev/null |grep "^${NET_INTERFACE}" |awk '{print $2}')"

if [ -z "${iface_status}" ]; then
	# interface not found
	echo "Network interface ${NET_INTERFACE} not found, will start now."
	systemctl restart systemd-networkd
else
	echo -n "Pinging ${PING_HOST} on ${NET_INTERFACE}... " 1>&2

	if ! ping -q -I ${NET_INTERFACE} -c 1 ${PING_HOST} -s 0 >/dev/null; then
		echo "FAIL"
		echo "Unable to ping ${PING_HOST} on ${NET_INTERFACE}, will restart networking now."
		systemctl restart systemd-networkd
	else
		echo "OK"
	fi
fi
