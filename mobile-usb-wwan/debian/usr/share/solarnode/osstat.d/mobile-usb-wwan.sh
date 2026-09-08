#!/usr/bin/env sh

do_mobile_signal_quality () {
	local qual="$(/usr/share/solarnode/cfg.d/mobile.sh signal-quality)"
	if [ -n "$qual" ]; then
		echo 'i/mobile_rssi,i/mobile_ber'
		echo "$qual"
	fi
}
