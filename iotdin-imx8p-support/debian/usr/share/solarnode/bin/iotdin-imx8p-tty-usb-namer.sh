#!/usr/bin/env sh
#
# udev PROGRAM helper script to consistently name USB serial devices on IoT DIN iMX8 devices.

case "$1" in
		1) echo ttyUSB_1 ;;
		*) echo "ttyUSB_$1" ;;
esac

