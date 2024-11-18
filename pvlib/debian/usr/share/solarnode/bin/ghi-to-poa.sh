#!/usr/bin/env sh

CONF=/etc/solarnode/sn-pvlib.conf
PVLIB_VENV=/usr

if [ -r "$CONF" ]; then
	. "$CONF"
fi

$PVLIB_VENV/bin/python3 /usr/share/solarnode/bin/ghi-to-poa.py $@
