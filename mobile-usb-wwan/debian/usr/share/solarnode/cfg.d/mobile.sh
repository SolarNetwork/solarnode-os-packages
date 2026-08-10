#!/usr/bin/env bash
#
# SolarNode mobile (cellular/4G) network helper script for the sn-mobile-usb-wwan
# package, which manages cellular connectivity.
#
# Invoked by the solarcfg wrapper:
#
#     solarcfg mobile <action> [args...]
#
# solarcfg dispatches to this script (installed as
# /usr/share/solarnode/cfg.d/mobile.sh) with <action> as the first argument,
# run as root via sudo.
#
# Supports the net.solarnetwork.node.setup.mobile plugin, which sends a
# SystemConfigure instruction with service=/setup/network/mobile.
#
# Output contract (consumed by the plugin):
#   status -> "key: value" lines. "present: true|false" indicates whether a
#             modem exists (so whether a reset is possible); "active: true|false"
#             indicates current connectivity; remaining lines (operator, access,
#             signal, state) are informational.
#   configure/reset/restart -> human-readable result lines on STDOUT; errors on
#             STDERR with a non-zero exit code.

# Load configuration. MOBILE_APN selects the APN used to establish the data
# connection.
CONF="/usr/share/solarnode/default/sn-mobile-usb-wwan"
VENDOR_CONF="/etc/default/sn-mobile-usb-wwan"
[ -e "$CONF" ] && . "$CONF"
[ -e "$VENDOR_CONF" ] && . "$VENDOR_CONF"

NET_INTERFACE="${NET_INTERFACE:-wwan0}"
APN="${MOBILE_APN:-internet}"

STATE_FILE="/var/lib/misc/sn-mobile-usb-wwan"

ACTION="$1"
shift 2>/dev/null

device_status () {
	ip -br link show 2>/dev/null | grep "^${NET_INTERFACE}" | awk '{print $2}'
}

device_present () {
	local status="$(device_status)"
	if [ -n "${status}" ]; then
		return 0;
	fi
	return 1;
}

is_configured () {
	[ -e "$STATE_FILE" ] && grep -q '^CONFIGURED=1' "$STATE_FILE" 2>/dev/null
}

mark_configured () {
	if grep -q '^CONFIGURED=' "$STATE_FILE" 2>/dev/null; then
		sed -i -e 's/CONFIGURED=.*/CONFIGURED=1/' "$STATE_FILE"
	else
		echo 'CONFIGURED=1' >>"$STATE_FILE"
	fi
}

# print connection status as "key: value" lines (present, active, then detail)
do_status () {
	# Get status of network interface, e.g. UP, DOWN, UNKNOWN
	local iface_status="$(device_status)"
	if [ -z "${iface_status}" ]; then
		echo "present: false"
		echo "active: false"
		echo "detail: ${NET_INTERFACE} not available"
		return 0
	fi
	echo "present: true"

	local addr="$(ip -br -4 addr show "${NET_INTERFACE}" 2>/dev/null | awk '{print $3}')"
	# allow UNKNOWN
	if [ \( "$iface_status" = "UP" -o "$iface_status" = "UNKNOWN" \) -a -n "$addr" ]; then
		echo "active: true"
	else
		echo "active: false"
	fi

	echo "interface: ${NET_INTERFACE}"
	echo "state: $iface_status"
	[ -n "$addr" ] && echo "address: $addr"
	return 0
}

# restart network service
do_restart () {
	echo "Restarting ${NET_INTERFACE}..."
	if systemctl is-active systemd-networkd >/dev/null; then
		networkctl down "${NET_INTERFACE}" || true
		sleep 1
		networkctl reconfigure "${NET_INTERFACE}" || true
		networkctl up "${NET_INTERFACE}" || true
	fi
}

exec_configure () {
	if /usr/share/solarnode/bin/mobile-usb-wwan-init.sh; then
		echo 'Modem configured.'
		return 0
	else
		echo 'Unable to configure modem.' 1>&2
		return 1
	fi
}

# reset the mobile connection by power-cycling the radio then reconnecting; relies on
# hardware-specific MOBILE_RESET_HOOK script path to be defined in VENDOR_CONF file
do_reset () {
	if ! is_configured; then
		echo 'Performing first-time modem configuration...'
		exec_configure
		mark_configured
	fi

	if [ -n "$MOBILE_RESET_HOOK" -a -x "$MOBILE_RESET_HOOK" ]; then
		echo "Resetting modem with $MOBILE_RESET_HOOK..."
		if sh "$MOBILE_RESET_HOOK"; then
			echo "Modem reset."
		else
			echo "Error resetting modem."
		fi
	fi

	do_restart
	echo "Mobile connection reset."
	return 0
}

# configure the modem hardware
do_configure () {
	if exec_configure; then
		mark_configured
		do_reset
	else
		exit 1
	fi
}

case "$ACTION" in
	configure) do_configure "$@";;
	status)    do_status "$@";;
	reset)     do_reset "$@";;
	restart)   do_restart "$@";;
	*)
		echo "Action '${ACTION}' not supported. Use one of: configure, status, reset, restart." 1>&2
		exit 1
esac
