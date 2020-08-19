#!/usr/bin/env sh
#
# Helper script for SolarNode OS WiFi configuration support. This script will synchronize
# a wpa_supplicant configuration file's settings into the sn-wifi package configuration.
# 
# The WPA_CONF environment variable can be used to change the destination file to read.

WPA_CONF="${WPA_CONF:-/etc/wpa_supplicant/wpa_supplicant-wlan0.conf}"

if [ ! `id -u` = 0 ]; then
	echo "You must be root to run this script."
	exit 1
fi

if [ ! -e "$WPA_CONF" ]; then
	echo "WPA configuration not found (WPA_CONF environment variable): $WPA_CONF"
	exit 1
fi

conf_value () {
	# extract variable value with leading/trailing " characters removed
	awk -F= '$1 ~ /^[ \t]*'"$1"'$/ {gsub(/(^"|"$)/,"",$2); print $2}' "$WPA_CONF"
}

COUNTRY=$(conf_value "country")
SSID=$(conf_value "ssid")

if [ -n "$COUNTRY" ]; then
	echo "Set country=$COUNTRY"
	echo "sn-wifi sn-wifi/country string ${COUNTRY}" |debconf-set-selections
fi
if [ -n "$SSID" ]; then
	echo "Set ssid=$SSID"
	echo "sn-wifi sn-wifi/ssid string ${SSID}" |debconf-set-selections
fi
