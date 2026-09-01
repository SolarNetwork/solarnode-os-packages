#!/usr/bin/env sh
set -e

CONF="/usr/share/solarnode/default/sn-mobile-usb-wwan"
VENDOR_CONF="/etc/default/sn-mobile-usb-wwan"

MODEM_DEV="/dev/modem"
NETSET_FILE="/usr/local/share/mobile-network-settings.json"
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

if [ ! -e "$MODEM_DEV" ]; then
    echo "Modem device $MODEM_DEV not available." >&2
    exit 1
fi

NETSET_CGDCONT=

if [ -e "$NETSET_FILE" ]; then
	PLMN="$(/usr/share/solarnode/cfg.d/mobile.sh plmn)"
	if [ -n "$PLMN" ]; then
		# look up NETSET_KEY
		NETSET_KEY="$(jq -r --arg plmn "$PLMN" '.data[] | select(.plmn == $plmn) | .iso + " " + .network' /usr/share/solarnode/data/mobile-mcc-mnc.json)"
		if [ -n "$NETSET_KEY" ]; then
			NETSET_APN="$(jq -r --arg key "$NETSET_KEY" '.[$key] | .apn // empty' "$NETSET_FILE")"
			if [ -n "$NETSET_APN" ]; then
				MOBILE_APN="$NETSET_APN"
			fi
			NETSET_CGDCONT="$(jq -r --arg key "$NETSET_KEY" '.[$key] | .cgdcont // empty' "$NETSET_FILE")"
			if [ -n "$NETSET_APN" ]; then
				MOBILE_APN="$NETSET_APN"
			fi
		fi
	fi
fi

# make sure MOBILE_API exported with default fallback
export MOBILE_APN="${MOBILE_APN:-internet}"

if [ -e "$AT_INIT_FILE" ]; then

	echo "Initializing modem from $AT_INIT_FILE:"
	tmp_init="$(mktemp -p "${TMP_DIR}" sn-mobile-usb-wwan-init-XXXXX)"
	if [ -n "$NETSET_CGDCONT" ]; then
		cat "$AT_INIT_FILE" \
			|sed -e 's/^AT.CGDCONT=.*/'"$NETSET_CGDCONT"'/' \
			|envsubst "$CONF_VARIABLES" >"$tmp_init"
	else
		cat "$AT_INIT_FILE" |envsubst "$CONF_VARIABLES" >"$tmp_init"
	fi

	while IFS= read -r cmd; do
		echo "$cmd"
		echo "$cmd" | socat -u - "$MODEM_DEV,rawer,crnl" >/dev/null
		sleep 0.5
	done < "$tmp_init"
	rm -f "${tmp_init}" || true
	echo "Done initializing modem from $AT_INIT_FILE."
fi
