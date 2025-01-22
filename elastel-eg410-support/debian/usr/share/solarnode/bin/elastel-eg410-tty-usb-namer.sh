#!/usr/bin/env sh
#
# udev PROGRAM helper script to consistently name USB serial devices on Elastel EG410 devices.

case "$1" in
		1.2) echo ttyUSB_1 ;;
		1.1) echo ttyUSB_2 ;;
		*) echo "ttyUSB_$1" ;;
esac
