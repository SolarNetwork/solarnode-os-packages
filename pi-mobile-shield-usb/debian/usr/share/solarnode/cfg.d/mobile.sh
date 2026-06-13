#!/usr/bin/env bash
#
# SolarNode mobile (cellular/4G) network helper script for the
# sn-pi-mobile-shield-usb package, which manages cellular connectivity via
# pppd (rather than ModemManager).
#
# Invoked by the solarcfg wrapper:
#
#     solarcfg mobile <action> [args...]
#
# Output contract (consumed by the plugin):
#   status -_> "key: value" lines. "present: true|false" indicates whether the
#             PPP connection service exists (so whether a reset is possible);
#             "active: true|false" indicates current connectivity; remaining
#             lines (interface, address, state) are informational.
#   reset/restart -> human-readable result lines on STDOUT; errors on STDERR
#             with a non-zero exit code.

PPPD_SERVICE="sn-mobile-shield-usb-pppd"
NET_INTERFACE="ppp0"

# honor the interface override shared with the auto-reconnect task
DEFAULTS="/etc/default/sn-pi-mobile-shield"
if [ -e "$DEFAULTS" ]; then
	. "$DEFAULTS"
fi

ACTION="$1"
shift 2>/dev/null

# return success if the PPP connection service is installed
service_present () {
	systemctl list-unit-files "${PPPD_SERVICE}.service" 2>/dev/null \
		| grep -q "^${PPPD_SERVICE}.service"
}

# print connection status as "key: value" lines (present, active, then detail)
do_status () {
	if ! service_present; then
		echo "present: false"
		echo "active: false"
		echo "detail: ${PPPD_SERVICE} service not installed"
		return 0
	fi
	echo "present: true"

	# Get status of network interface, e.g. UP, DOWN, UNKNOWN
	local iface_status addr
	iface_status="$(ip -br link show 2>/dev/null | grep "^${NET_INTERFACE}" | awk '{print $2}')"

	# a PPP link reports UNKNOWN when up, so treat UP and UNKNOWN as active
	if [ "$iface_status" = "UP" ] || [ "$iface_status" = "UNKNOWN" ]; then
		echo "active: true"
	else
		echo "active: false"
	fi

	echo "interface: ${NET_INTERFACE}"
	[ -n "$iface_status" ] && echo "state: $iface_status"
	addr="$(ip -br -4 addr show "${NET_INTERFACE}" 2>/dev/null | awk '{print $3}')"
	[ -n "$addr" ] && echo "address: $addr"
	return 0
}

# reset the mobile connection by restarting the PPP connection
do_reset () {
	if ! service_present; then
		echo "No PPP connection service (${PPPD_SERVICE}) present to reset." 1>&2
		exit 4
	fi
	echo "Restarting PPP connection (${PPPD_SERVICE})..."
	systemctl restart "${PPPD_SERVICE}"
	echo "Mobile connection reset requested."
	return 0
}

# restart the mobile networking service; for pppd this is the same underlying
# action as reset, as there is no separate management daemon
do_restart () {
	echo "Restarting PPP connection service (${PPPD_SERVICE})..."
	systemctl restart "${PPPD_SERVICE}"
}

case "$ACTION" in
	status)  do_status "$@";;
	reset)   do_reset "$@";;
	restart) do_restart "$@";;
	*)
		echo "Action '${ACTION}' not supported. Use one of: status, reset, restart." 1>&2
		exit 1
esac
