#!/usr/bin/env bash
#
# This script is run by wpa_cli (which runs as part of the wpa-autoap service) when the WiFi network state changes
# $1 has the interface name (EXCEPT for the unique cases of "reset" and "start")
# $2 has one of: AP-ENABLED, AP-DISABLED, CONNECTED, AP-STA-CONNECTED, AP-STA-DISCONNECTED, or DISCONNECTED
# $3 has a MAC address for (at least) AP-STA-CONNECTED and AP-STA-DISCONNECTED
#
# Based on https://github.com/gitbls/autoAP/blob/master/autoAP.sh

device=$1

confFile="/etc/sn-wifi-autoap.conf"
networkUnit="/etc/systemd/network/20-wlan.network"
lockFile="/var/run/sn-wifi-autoap.locked"
unlockFile="/var/run/sn-wifi-autoap.unlock"
modeFile="/var/run/sn-wifi.mode"
hookFile="/usr/local/bin/sn-wifi-autoap.sh"

logmsg () {
	#[ $debug -eq 1 ] && logger --id=$$ "wifi-autoap: $1"
	echo "wifi-autoap: $1"
}

logflags () {
	return		 # Comment this out for flag logging when debug=0
	[ -f $lockFile ] && s1="$(ls -l $lockFile)" || s1="Not found"
	[ -f $unlockFile ] && s2="$(ls -l $unlockFile)" || s2="Not found"
	logmsg "Lock status 1: $s1"
	logmsg "Lock status 2: $s2"
}

is_client () {
	local mode="$([ -e $modeFile ] && cat $modeFile)"
	[ -e $networkUnit -a \( "$mode" = "client" -o ! -e $modeFile \) ] && return 0 || return 1
}

configure_ap () {
	if is_client; then
		logmsg "Configuring $device as an Access Point"
		[ -e $networkUnit ] && mv $networkUnit $networkUnit~
		systemctl restart systemd-networkd
		echo 'ap' >$modeFile
		[ -x $hookFile ] && $hookFile AccessPoint
	fi
}

configure_client () {
	if ! is_client; then
		logmsg "Configuring $device as a Wireless Client"
		[ -e $networkUnit~ ] && mv $networkUnit~ $networkUnit
		systemctl restart systemd-networkd
		echo 'client' >$modeFile
		[ -x $hookFile ] && $hookFile Client
	fi
}

reconfigure_wpa_supplicant () {
	# $1 has number of seconds to wait
	if [ -f $lockFile ]; then
		logmsg "Reconfigure already locked. Unlocking..."
		touch $unlockFile
		return
	else
		touch $lockFile
		[ -f $unlockFile ] && rm -f $unlockFile
		logmsg "Starting reconfigure wait loop"
		for ((i=0; i<=$1; i++)) do
			sleep 1
			if [ -f $unlockFile ]; then
				logmsg "Reconfigure wait unlocked"
				rm -f $unlockFile
				rm -f $lockFile
				logflags
				return
			fi
		done
		# Completed loop, check for reconfigure
		rm -f $unlockFile
		rm -f $lockFile
		logmsg "Checking wpa reconfigure after wait loop"
		if [ "$(wpa_cli -i $device all_sta)" = "" ]; then
			logmsg "No stations connected; performing wpa reconfigure"
			wpa_cli -i $device reconfigure
		fi
	fi
}

do_reset() {
	[ -f $lockFile ] && rm -f $lockFile
	[ -f $unlockFile ] && rm -f $unlockFile
	[ -f $networkUnit~ ] && mv $networkUnit~ $networkUnit
}

if [ -f $confFile ]; then
	source $confFile
else
	enablewait="300"			# Seconds to wait in AP mode when AP enabled if no AP clients before wpa reconfigure
	disconnectwait="20"			# Seconds to wait in AP mode when a client disconnects before wpa reconfigure
	debug=0
fi

# Uncomment this if needed for debugging
#logger --id=$$ "autoAP enablewait=$enablewait | disconnectwait=$disconnectwait | debug=$debug"

if [ "$1" == "reset" ]; then
	do_reset
	exit 0
fi

# $1 = "start"
# $2 = device name (typically wlan0)

if [ "$1" == "start" ]; then
	do_reset
	while [ ! -e /var/run/wpa_supplicant/$2 ]  # -e to test if in the namespace
	do
		logmsg "Waiting for wpa_supplicant to come online"
		sleep 0.5
	done
	logmsg "wpa_supplicant online, starting wpa_cli to monitor wpa_supplicant messages"
	exec /sbin/wpa_cli -i $2 -a /usr/share/solarnode/bin/wifi-autoap.sh 
	exit 0
fi

# For the rest of the operations, called from wpa_cli:
#	$1 has the interface name
#	$2 has one of: AP-ENABLED, AP-DISABLED, CONNECTED, AP-STA-CONNECTED, AP-STA-DISCONNECTED, or DISCONNECTED
#	$3 has a MAC address for (at least) AP-STA-CONNECTED and AP-STA-DISCONNECTED

logmsg "$1 state $2 $3"	 # Log incoming message 

case "$2" in
	# Configure access point if one is created
	AP-ENABLED)
		logflags
		configure_ap
		reconfigure_wpa_supplicant $enablewait &
		;;

	# AP became disabled, configure as Client
	AP-DISABLED)
		logflags
		;;
	
	# Configure as client, if connected to some network
	CONNECTED)
		logflags
		if wpa_cli -i $device status | grep -q "mode=station"; then
			logmsg "CONNECTED in station mode, configuring client"
			configure_client
		fi
		;;

	# Reconfigure wpa_supplicant to search for your wifi again if nobody is connected to the ap
	AP-STA-DISCONNECTED)
		logmsg "Station $3 disconnected"
		logflags
		reconfigure_wpa_supplicant $disconnectwait &
		;;

	AP-STA-CONNECTED)
		logmsg "Station $3 connected"
		logflags
		touch $unlockFile			 # Cancel any waiting reconfigure since someone connected now
		;;

	DISCONNECTED)
		logflags
		if is_client; then
			logmsg "Client disconnected, configuring as AP"
			configure_ap
		fi
		;;

	*) # For debugging or curiosity
		logmsg "Unrecognized state $2"
		;;
esac
exit 0