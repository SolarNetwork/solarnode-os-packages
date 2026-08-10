#!/usr/bin/env sh
set -e

CONF="/usr/share/solarnode/default/sn-mobile-mm"
VENDOR_CONF="/etc/default/sn-mobile-mm"
MODEM_DEV="/dev/modem"

AT_INIT_FILE=/usr/share/solarnode/example/mobile-mm-init-default

if [ -e "$CONF" ]; then
	. "$CONF"
fi
if [ -e "$VENDOR_CONF" ]; then
	. "$VENDOR_CONF"
fi

# we have to export MOBILE_APN because of the `echo $line |envsubst` use below
export MOBILE_APN="${MOBILE_APN:-internet}"

for i in $(seq 1 300); do
    if [ -e "$MODEM_DEV" ]; then
        break
    fi
    sleep 0.1
done

if [ ! -e "$MODEM_DEV" ]; then
    echo "Timed out waiting for $MODEM_DEV" >&2
    exit 1
fi

if [ -e "$AT_INIT_FILE" -a -h "$MODEM_DEV" -a -e "$MODEM_DEV" ]; then
	echo "Initializing modem from $AT_INIT_FILE:"
	while IFS= read -r line; do
		cmd="$(echo $line |envsubst '$MOBILE_APN')"
		echo "$cmd"
		echo "$cmd" |socat -u - "$MODEM_DEV,crnl" >/dev/null
		sleep 0.5
	done < "$AT_INIT_FILE"
	echo "Done initializing modem from $AT_INIT_FILE."
fi
