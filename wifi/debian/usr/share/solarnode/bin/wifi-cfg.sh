#!/usr/bin/env bash
#
# Helper script for SolarNode OS WiFi configuration support. This script manages
# the WiFi settings in the /etc/wpa_supplicant/wpa_supplicant-wlan0.conf file.
# 
# You must pass -c and -s argument to this script. The password will be prompted
# for and read from STDIN, unless STDIN is not a terminal. The following use
# will prompt for the password:
#
#     wifi-cfg.sh -c NZ -s FOOBAR
#
# The following use will not prompt for the password:
#
#     echo "secret.123" |wifi-cfg.sh -c NZ -s FOOBAR
#
# The password can also be provided by a -p argument. The following will not 
# prompt for a password:
#
#     wifi-cfg.sh -c NZ -s FOOBAR -p secret.123

WPA_CONF="${WPA_CONF:-/etc/wpa_supplicant/wpa_supplicant-wlan0.conf}"
WPA_CONF_EXAMPLE="/usr/share/solarnode/example/wpa_supplicant-wlan0.conf"
WPA_PP="/usr/bin/wpa_passphrase"
COUNTRY=""
SSID=""
PASS=""

do_help () {
	cat 1>&2 <<EOF
Usage: wifi-cfg.sh -c <country> -s <ssid>

The script will prompt for the password on STDIN.

Arguments:

	 -c <country>  - The WiFi 2-character country code.
	 -s <ssid>     - The WiFi SSID to connect to.
	 -p <password> - The WiFi password to use.
EOF
}

while getopts ":c:p:s:" opt; do
	case $opt in
		c) COUNTRY="${OPTARG}";;
		p) PASS="${OPTARG}";;
		s) SSID="${OPTARG}";;
		*)
			echo "Unknown option '$OPTARG'." 1>&2
			do_help
			exit 1
	esac
done
shift $(($OPTIND - 1))

if [ -z "$COUNTRY" ];then
	echo "The -c <country> argument must be provided." 1>&2
	exit 1
fi

if [ -z "$SSID" ];then
	echo "The -s <ssid> argument must be provided." 1>&2
	exit 1
fi

if [ -z "$PASS" ]; then
	[ -t 0 ] && stty -echo
	read -p "Password: " -r PASS
	[ -t 0 ] && stty echo && printf "\n"
fi

if [ -n "$SSID" -a ${#PASS} -ge 8 -a -e "$WPA_PP" ]; then
	# if pass looks like it is already a wpa_passphrase format, then use that directly
	PSK="$PASS"
	if ! [[ $PASS =~ [0-9a-fA-F]{64} ]]; then
		PSK=$($WPA_PP "$SSID" "$PASS" |awk -F= '$1 ~ /psk/ && $1 !~ /#psk/ {print $2}')
	fi
	if [ ! -e "$WPA_CONF" -a -e "$WPA_CONF_EXAMPLE" ]; then
		# copy example
		cp "$WPA_CONF_EXAMPLE" "$WPA_CONF" || true
		chmod 640 "$WPA_CONF" || true
	fi
	if [ -e "$WPA_CONF" ]; then
		cat /dev/null >"$WPA_CONF.tmp" || true
		chmod 640 "$WPA_CONF.tmp" || true
		# look for sn-wifi-cfg-start/sn-wifi-cfg-end block to restrict changes to,
		# in case multiple networks are defined
		if grep -q sn-wifi-cfg-start "$WPA_CONF"; then
			sed -e "s/country=.*/country=$COUNTRY/" \
				-e '/sn-wifi-cfg-start/,/sn-wifi-cfg-end/{s/ssid=.*/ssid="'"$SSID"'"/}' \
				-e '/sn-wifi-cfg-start/,/sn-wifi-cfg-end/{/#psk=.*/d}' \
				-e "/sn-wifi-cfg-start/,/sn-wifi-cfg-end/{s/psk=.*/psk=$PSK/}" "$WPA_CONF" \
				>"$WPA_CONF.tmp" || true
		else
			sed -e "s/country=.*/country=$COUNTRY/" \
				-e 's/ssid=.*/ssid="'"$SSID"'"/' \
				-e '/#psk=.*/d' \
				-e "s/psk=.*/psk=$PSK/" "$WPA_CONF" \
				>"$WPA_CONF.tmp" || true
		fi
		if diff -q "$WPA_CONF" "$WPA_CONF.tmp" >/dev/null; then
			# unchanged
			rm "$WPA_CONF.tmp" || true
		else
			# changed, so replace
			mv -f "$WPA_CONF.tmp" "$WPA_CONF" || true
		fi
	fi
fi
