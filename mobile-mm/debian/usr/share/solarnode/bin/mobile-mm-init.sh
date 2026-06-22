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

# Enable the modem and bring up the data connection. ModemManager does not
# auto-attach the bearer on this image, so trigger an explicit connect. Don't
# fail the unit if connectivity isn't up yet (e.g. no signal at boot).
MOBILE_CFG=/usr/share/solarnode/cfg.d/mobile.sh
if [ -x "$MOBILE_CFG" ]; then
	echo "Establishing mobile data connection"
	"$MOBILE_CFG" connect || true
fi
