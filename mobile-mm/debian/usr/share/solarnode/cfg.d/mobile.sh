#!/usr/bin/env bash
#
# SolarNode mobile (cellular/4G) network helper script for the sn-mobile-mm
# package, which manages cellular connectivity via ModemManager.
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
#   reset/restart -> human-readable result lines on STDOUT; errors on STDERR
#             with a non-zero exit code.

ACTION="$1"
shift 2>/dev/null

# return success if a modem is present
modem_present () {
	command -v mmcli >/dev/null 2>&1 || return 1
	mmcli -L 2>/dev/null | grep -q '/Modem/'
}

# print connection status as "key: value" lines (present, active, then detail)
do_status () {
	if ! command -v mmcli >/dev/null 2>&1; then
		echo "present: false"
		echo "active: false"
		echo "detail: ModemManager not installed"
		return 0
	fi
	if ! modem_present; then
		echo "present: false"
		echo "active: false"
		return 0
	fi
	local kv state op sig act
	kv="$(mmcli -m any -K 2>/dev/null)"
	state="$(printf '%s\n' "$kv" | sed -n 's/^modem\.generic\.state *: *//p')"
	op="$(printf '%s\n' "$kv" | sed -n 's/^modem\.3gpp\.operator-name *: *//p')"
	sig="$(printf '%s\n' "$kv" | sed -n 's/^modem\.generic\.signal-quality\.value *: *//p')"
	act="$(printf '%s\n' "$kv" | sed -n 's/^modem\.generic\.access-technologies\.value\[1\] *: *//p')"

	echo "present: true"
	if [ "$state" = "connected" ]; then
		echo "active: true"
	else
		echo "active: false"
	fi
	[ -n "$op" ] && echo "operator: $op"
	[ -n "$act" ] && echo "access: $act"
	[ -n "$sig" ] && echo "signal: ${sig}%"
	[ -n "$state" ] && echo "state: $state"
	return 0
}

# reset the mobile connection by power-cycling the radio (disable then enable)
do_reset () {
	if ! command -v mmcli >/dev/null 2>&1; then
		echo "ModemManager (mmcli) not available." 1>&2
		exit 3
	fi
	if ! modem_present; then
		echo "No modem present to reset." 1>&2
		exit 4
	fi
	echo "Disabling modem..."
	mmcli -m any --disable >/dev/null 2>&1
	sleep 2
	echo "Enabling modem..."
	mmcli -m any --enable >/dev/null 2>&1
	# If the bearer does not auto-reconnect on this image, an explicit connect
	# may be required instead, for example:
	#   mmcli -m any --simple-connect="apn=<apn>"
	# A stronger alternative is a full modem reset (power cycle):
	#   mmcli -m any --reset
	echo "Mobile connection reset requested."
	return 0
}

# restart the mobile networking service
do_restart () {
	echo "Restarting ModemManager..."
	systemctl restart ModemManager
}

case "$ACTION" in
	status)  do_status "$@";;
	reset)   do_reset "$@";;
	restart) do_restart "$@";;
	*)
		echo "Action '${ACTION}' not supported. Use one of: status, reset, restart." 1>&2
		exit 1
esac
