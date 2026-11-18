# shellcheck shell=sh
#
# The restart-solarnode command: restart SolarNode once apt/dpkg is idle.

# true while apt or dpkg holds the dpkg lock
dpkg_busy () {
	if command -v fuser >/dev/null 2>&1; then
		fuser -s /var/lib/dpkg/lock-frontend /var/lib/dpkg/lock >/dev/null 2>&1
	else
		lslocks -n -o PATH 2>/dev/null | grep -Eq '^/var/lib/dpkg/lock(-frontend)?[[:space:]]*$'
	fi
}

# true while SolarNode runs apt, dpkg or solarpkg (a UI install), as restarting
# SolarNode kills everything in its cgroup
sn_pkg_busy () {
	cg="$(systemctl show -p ControlGroup --value "$SN_SERVICE" 2>/dev/null)" || return 1
	[ -n "$cg" ] || return 1
	# the first cgroup layout found (v2, hybrid, v1), with its child cgroups
	for d in "/sys/fs/cgroup$cg" "/sys/fs/cgroup/unified$cg" "/sys/fs/cgroup/systemd$cg"; do
		[ -r "$d/cgroup.procs" ] || continue
		pids="$(find "$d" -name cgroup.procs -exec cat {} + 2>/dev/null || true)"
		for p in $pids; do
			case "$(cat "/proc/$p/comm" 2>/dev/null)" in
				apt|apt-get|dpkg|dpkg-*)
					return 0
					;;
				sh|dash|bash|sudo)
					case "$(tr '\0' ' ' 2>/dev/null <"/proc/$p/cmdline")" in
						*solarpkg*) return 0 ;;
					esac
					;;
			esac
		done
		return 1
	done
	return 1
}

# true while apt/dpkg runs, on its own or inside SolarNode
pkg_busy () {
	dpkg_busy || sn_pkg_busy
}

# Restart SolarNode if ensure requested it and SolarNode has not restarted since.
restart_solarnode () {
	if [ ! -s "$RESTART_FILE" ]; then
		log "no SolarNode restart requested"
		return 0
	fi
	# the request time, in epoch milliseconds; read now, as removing sn-historian
	# during the wait can delete the file
	req="$(cat "$RESTART_FILE" 2>/dev/null || true)"
	case "$req" in
		''|*[!0-9]*) req=0 ;;
	esac
	# wait until apt/dpkg has been idle for RESTART_SETTLE seconds in a row, so the
	# restart does not land between two package runs that SolarNode makes
	deadline=$(( $(date +%s) + RESTART_WAIT ))
	idle=0
	waiting=
	while [ "$idle" -lt "$RESTART_SETTLE" ]; do
		if pkg_busy; then
			idle=0
			if [ -z "$waiting" ]; then
				log "waiting for apt/dpkg to finish before restarting SolarNode"
				waiting=1
			fi
		else
			idle=$((idle + 1))
		fi
		if [ "$idle" -lt "$RESTART_SETTLE" ] && [ "$(date +%s)" -ge "$deadline" ]; then
			die "apt/dpkg still busy after ${RESTART_WAIT}s; SolarNode was not restarted. Restart it to load the historian."
		fi
		sleep 1
	done
	# a request made during the wait joins this run: use the newest one
	newer="$(cat "$RESTART_FILE" 2>/dev/null || true)"
	case "$newer" in
		''|*[!0-9]*) ;;
		*) if [ "$newer" -gt "$req" ]; then req="$newer"; fi ;;
	esac
	# a stopped SolarNode loads the plugin when it starts
	state="$(systemctl is-active "$SN_SERVICE" 2>/dev/null || true)"
	if [ "$state" != "active" ]; then
		log "SolarNode is $state, not restarting it"
		rm -f "$RESTART_FILE"
		return 0
	fi
	if [ "$(unit_start_ms "$SN_SERVICE")" -gt "$req" ]; then
		log "SolarNode already restarted after the request"
		rm -f "$RESTART_FILE"
		jar_loaded_record
		return 0
	fi
	rm -f "$RESTART_FILE"
	log "restarting SolarNode"
	systemctl try-restart "$SN_SERVICE"
	jar_loaded_record
}
