#!/usr/bin/env sh
set -e

CONF="/usr/share/solarnode/default/sn-mobile-usb-wwan"
VENDOR_CONF="/etc/default/sn-mobile-usb-wwan"

MODEM_DEV="/dev/modem"
AT_INIT_FILE="/usr/share/solarnode/example/mobile-usb-wwan-init-default"
CONF_VARIABLES='$MOBILE_APN'

# note we turn on variable export with set -a while reading conf files, to pass to envsubst later

if [ -e "$CONF" ]; then
	set -a
	. "$CONF"
	set +a
	CONF_VARIABLES=$(
		# extract all variable names from CONF to use with envsubst
		awk '
			{
				sub(/^[[:space:]]*#[[:space:]]*/, "")
				sub(/^[[:space:]]*/, "")
				if ($0 ~ /^[A-Z][A-Z0-9_]*=/) {
					var = $0
					sub(/=.*/, "", var)
					if (!seen[var]++) {
						if (result != "") result = result ","
						result = result "$" var
					}
				}
			}
			END { print result }
		' "$CONF"
	)
fi
if [ -e "$VENDOR_CONF" ]; then
	set -a
	. "$VENDOR_CONF"
	set +a
fi

TMP_DIR="${TMPDIR:-/tmp}"

# make sure MOBILE_API exported with default fallback
export MOBILE_APN="${MOBILE_APN:-internet}"

if [ ! -e "$MODEM_DEV" ]; then
    echo "Modem device $MODEM_DEV not available." >&2
    exit 1
elif [ -e "$AT_INIT_FILE" ]; then
	echo "Initializing modem from $AT_INIT_FILE:"
	tmp_init="$(mktemp -p "${TMP_DIR}" sn-mobile-usb-wwan-init-XXXXX)"
	cat "$AT_INIT_FILE" |envsubst "$CONF_VARIABLES" >"$tmp_init"
	while IFS= read -r cmd; do
		echo "$cmd"
		echo "$cmd" | socat -u - "$MODEM_DEV,rawer,crnl" >/dev/null
		sleep 0.5
	done < "$tmp_init"
	rm -f "${tmp_init}" || true
	echo "Done initializing modem from $AT_INIT_FILE."
fi
