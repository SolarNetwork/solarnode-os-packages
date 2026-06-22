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
#   connect/reset/restart -> human-readable result lines on STDOUT; errors on
#             STDERR with a non-zero exit code.

# Load configuration. MOBILE_APN selects the APN used to establish the data
# connection; keep it in sync with the AT init APN (AT+CGDCONT). Defaults to
# "internet".
CONF="/usr/share/solarnode/default/sn-mobile-mm"
VENDOR_CONF="/etc/default/sn-mobile-mm"
[ -e "$CONF" ] && . "$CONF"
[ -e "$VENDOR_CONF" ] && . "$VENDOR_CONF"
APN="${MOBILE_APN:-internet}"

ACTION="$1"
shift 2>/dev/null

# return success if a modem is present
modem_present () {
	command -v mmcli >/dev/null 2>&1 || return 1
	mmcli -L 2>/dev/null | grep -q '/Modem/'
}

# return success if the modem reports a connected data session
modem_connected () {
	mmcli -m any -K 2>/dev/null | grep -q '^modem.generic.state *: *connected'
}

# wait up to ~30s for ModemManager to detect a modem (it may still be probing
# right after boot or a ModemManager restart)
wait_for_modem () {
	local i=0
	while [ $i -lt 15 ]; do
		modem_present && return 0
		sleep 2
		i=$((i + 1))
	done
	return 1
}

# wait up to ~60s for the modem to register on the network before connecting
wait_for_register () {
	local i=0 state
	while [ $i -lt 30 ]; do
		state="$(mmcli -m any -K 2>/dev/null | sed -n 's/^modem\.generic\.state *: *//p')"
		case "$state" in
			registered|connected) return 0;;
		esac
		sleep 2
		i=$((i + 1))
	done
	return 1
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

# enable the modem and establish the data connection (bearer)
do_connect () {
	if ! command -v mmcli >/dev/null 2>&1; then
		echo "ModemManager (mmcli) not available." 1>&2
		exit 3
	fi
	if ! wait_for_modem; then
		echo "No modem present to connect." 1>&2
		exit 4
	fi
	# enable the radio (idempotent: a no-op if already enabled)
	mmcli -m any --enable >/dev/null 2>&1 || true
	if modem_connected; then
		echo "Mobile connection already active."
		return 0
	fi
	if ! wait_for_register; then
		echo "Modem did not register on the network." 1>&2
		exit 5
	fi
	echo "Connecting (apn=${APN})..."
	if mmcli -m any --simple-connect="apn=${APN}" >/dev/null 2>&1; then
		echo "Mobile connection established."
	else
		echo "Failed to establish mobile connection." 1>&2
		exit 6
	fi
	return 0
}

# reset the mobile connection by power-cycling the radio then reconnecting
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
	# do_connect re-enables the radio and re-establishes the data bearer, which
	# does not auto-attach on this image after an enable.
	do_connect
	echo "Mobile connection reset requested."
	return 0
}

# restart ModemManager and re-establish the data connection
do_restart () {
	echo "Restarting ModemManager..."
	systemctl restart ModemManager
	# ModemManager re-probes the modem on restart, leaving it disabled and
	# disconnected, so re-establish the data connection.
	do_connect
}

case "$ACTION" in
	status)  do_status "$@";;
	connect) do_connect "$@";;
	reset)   do_reset "$@";;
	restart) do_restart "$@";;
	*)
		echo "Action '${ACTION}' not supported. Use one of: status, connect, reset, restart." 1>&2
		exit 1
esac
