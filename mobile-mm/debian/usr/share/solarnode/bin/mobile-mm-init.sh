#!/bin/sh
set -e

USER=solar
CONF="/usr/share/solarnode/default/sn-mobile-mm"
VENDOR_CONF="/etc/default/sn-mobile-mm"

AT_INIT_FILE=/usr/share/solarnode/example/mobile-mm-init-default

if [ -e "$CONF" ]; then
	. "$CONF"
fi
if [ -e "$VENDOR_CONF" ]; then
	. "$VENDOR_CONF"
fi

if [ -e "$AT_INIT_FILE" -a -e /dev/modem ]; then
	echo "Initializing modem from $AT_INIT_FILE"
	cat "$AT_INIT_FILE" |socat - /dev/modem,crnl >/dev/null
fi
