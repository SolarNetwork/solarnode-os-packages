#!/usr/bin/env sh
# 
# Helper script to support SolarNode OS-level backups.

CONF_DIR="${CONF_DIR:-/usr/share/solarnode/backup.d}"
ROOT="${ROOT:-/}"

# Print help
do_help () {
	echo "Usage: $0 {list|status|start|stop|restart} [args]" 1>&2
}

verify_provider () {
	local provider="$1"
	if [ -z "${provider}" ]; then
		echo "Backup provider must be provided." 1>&2
		exit 1
	elif [ ! -e "${CONF_DIR}/${provider}.list" ]; then
		echo "Backup provider ${provider} not available." 1>&2
		exit 1
	fi
}

do_list () {
	local provider="$1"
	local flist="${CONF_DIR}/${provider}.list"
	verify_provider "${provider}"
	while IFS= read -r f; do
		if [ -e "$f" ]; then
			echo "$f"
		fi
	done < "${flist}"
}

do_archive () {
	local provider="$1"
	local flist="${CONF_DIR}/${provider}.list"
	verify_provider "${provider}"
	if [ -t 1 ]; then
		echo "Stubbornly refusing to archive to the terminal. Please redirect output." 1>&2
		exit 1
	fi
	tar -cz -C "${ROOT}" -T "${flist}" 2>/dev/null
}

do_extract () {
	local provider="$1"
	local flist="${CONF_DIR}/${provider}.list"
	verify_provider "${provider}"
	if [ -t 0 ]; then
		echo "No archive provided. Please pipe the archive to this program." 1>&2
		exit 1
	fi
	tar -xz -C "${ROOT}" 2>/dev/null
}

ACTION="$1"

if [ -z "$ACTION" ]; then
	do_help
	exit 1
fi

# pop ACTION off args
shift 1

# Parse command line parameters.
case $ACTION in
	l|list) do_list "$@";;
	
	c|create) do_archive "$@";;
	
	x|extract) do_extract "$@";;

	*)
		do_help
		exit 1
		;;
esac

exit 0
