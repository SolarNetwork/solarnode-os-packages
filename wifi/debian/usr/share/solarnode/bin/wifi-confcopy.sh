#!/usr/bin/env sh
#
# Helper script for SolarNode OS WiFi configuration support. This script will
# move a wpa_supplicant.conf file to the right place.

export WPA_CONF="/etc/wpa_supplicant/wpa_supplicant-wlan0.conf"

if [ -e "$1" ]; then
	/bin/mv -f "$1" "$WPA_CONF"
	/bin/chown root:root "$WPA_CONF"
	/bin/chmod 600 "$WPA_CONF"
	/usr/share/solarnode/bin/wifi-confsync.sh
fi
