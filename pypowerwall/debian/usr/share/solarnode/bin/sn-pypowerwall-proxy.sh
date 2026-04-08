#!/usr/bin/env sh

VENV_CONF=/etc/solarnode/sn-pypowerwall.conf
PROXY_CONF=/etc/solarnode/sn-pypowerwall-proxy.conf
PYPOWERWALL_VENV=/usr

if [ -r "$VENV_CONF" ]; then
	set -a
	. "$VENV_CONF"
fi

if [ -r "$PROXY_CONF" ]; then
	set -a
	. "$PROXY_CONF"
fi

exec $PYPOWERWALL_VENV/bin/python3 /usr/share/solarnode/pypowerwall-proxy/server.py
