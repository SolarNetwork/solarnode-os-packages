#!/usr/bin/env sh
#
# udev PROGRAM helper script to consistently name USB serial devices on Seeed Studio R1000 devices.

case "$1" in
	1.3.2) echo ttyUSB_3 ;;
	1.3.1) echo ttyUSB_2 ;;
	*) echo "ttyUSB_$1" ;;
esac
