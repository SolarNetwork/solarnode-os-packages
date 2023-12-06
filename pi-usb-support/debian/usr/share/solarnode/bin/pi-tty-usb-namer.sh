#!/usr/bin/env sh
#
# udev PROGRAM helper script to consistently name USB serial devices on Raspbery Pi devices. This
# script exists so it can be used across different Raspberry Pi models and produce consistent names
# for each one. The names are designed to work the the Java RXTX project.
#
# To use, create a udev rule like
#
# DRIVERS=="usb", PROGRAM="/usr/share/solarnode/bin/pi-tty-usb-namer.sh %s{devpath}", SYMLINK+="%c"
#
# That will cause a symlink to be named after the ATTR{devpath} attribute of the device. Links are
# named `ttyUSB_X` where `X` is a number staring a 1. The hardware maps the ports like this,
# looking at the USB ports on the device:
#
# Pi 3B, 3B+, 4B
#
# +-----+ +-----+
# |  1  | |  3  |
# +-----+ +-----+
# |  2  | |  4  |
# +-----+ +-----+

CPU="$(cat /proc/device-tree/system/linux,revision |xxd -p |sed -e 's/^0*//;s/^[ \t]*//;s/[ \t]*$//')"
DEVPATH="$1"

if [ -z "$DEVPATH" ]; then
	echo "Must pass the udev `devpath` attribute as program argument."
	exit 1
fi

unknown_dev () {
        echo "ttyUSB_$DEVPATH"
}

pi3b () {
        case "$DEVPATH" in
                1.2) echo ttyUSB_1 ;;
                1.3) echo ttyUSB_2 ;;
                1.4) echo ttyUSB_3 ;;
                1.5) echo ttyUSB_4 ;;
                *)   unknown_dev ;;
        esac
}

pi3b_plus () {
        case "$DEVPATH" in
                1.1.2) echo ttyUSB_1 ;;
                1.1.3) echo ttyUSB_2 ;;
                1.3)   echo ttyUSB_3 ;;
                1.2)   echo ttyUSB_4 ;;
                *)     unknown_dev ;;
        esac
}

pi4 () {
        case "$DEVPATH" in
                1.2) echo ttyUSB_1 ;;
                1.1) echo ttyUSB_2 ;;
                1.4) echo ttyUSB_3 ;;
                1.3) echo ttyUSB_4 ;;
                *)   unknown_dev ;;
        esac
}

case "$CPU" in
        a02082|a22082|a22083|a32082|a52082) pi3b ;;
        a020d3|a020d4) pi3b_plus ;;
        a03111|b03111|b03112|b03114|b03115|c03111|c03112|c03114|c03115|d03114|d03115) pi4 ;;
        *)                    unknown_dev ;;
esac
