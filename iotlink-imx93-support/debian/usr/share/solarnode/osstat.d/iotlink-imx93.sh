#!/usr/bin/env sh

do_cpu_temp () {
	local temp=""
	if [ -e /sys/class/thermal/thermal_zone0/temp ]; then
		# Using awk, rather than bc, so trailing zeros not generated
		temp=$(echo - |awk -v t=$(cat /sys/class/thermal/thermal_zone0/temp) '{print t / 1000}')
	fi
	if [ -n "$temp" ]; then
		echo 'i/cpu_temp'
		echo "$temp"
	fi
}
