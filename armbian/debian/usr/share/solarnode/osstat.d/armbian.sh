#!/usr/bin/env bash

do_cpu_temp () {
	local temp=""
	if [ -e /sys/class/thermal/thermal_zone0/temp ]; then
		temp=$(awk '{printf("%0.1f",$1/1000)}' /etc/armbianmonitor/datasources/soctemp)
	elif [ -e /sys/class/thermal/thermal_zone0/temp ]; then
		temp=$(awk '{printf("%0.1f",$1/1000)}' /sys/class/thermal/thermal_zone0/temp)
	elif [ -e /sys/class/hwmon/hwmon0/temp1_input ]; then
		temp=$(awk '{printf("%0.1f",$1/1000)}' /sys/class/hwmon/hwmon0/temp1_input)
	fi
	if [ -n "$temp" ]; then
		echo 'i/cpu_temp'
		echo "$temp"
	fi
}
