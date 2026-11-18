#!/bin/sh

cd "$(dirname "$0")/usr/share/solarnode" || exit 1

rc=0
shellcheck -x bin/sn-historian.sh sn-historian/*.sh || rc=1

# replace each '. "$SNH_LIB/x.sh"' line with x.sh, without its shellcheck directives
#
# shellcheck disable=SC2016
while IFS= read -r line; do
	case "$line" in
		'. "$SNH_LIB/'*'.sh"')
			f="${line#. \"\$SNH_LIB/}"
			grep -v '^# shellcheck ' "sn-historian/${f%\"}"
			;;
		*)
			printf '%s\n' "$line"
			;;
	esac
done <bin/sn-historian.sh | shellcheck -s sh - || rc=1

if [ "$rc" -eq 0 ]; then
	echo "shellcheck ok"
fi
exit "$rc"
