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
#
# See https://github.com/raspberrypi/documentation/blob/develop/documentation/asciidoc/computers/raspberry-pi/revision-codes.adoc


DEVPATH="$1"

if [ -z "$DEVPATH" ]; then
	echo 'Must pass the udev `devpath` attribute as program argument.'
	exit 1
fi

cpu="0x$(cat /proc/device-tree/system/linux,revision |xxd -p |sed -e 's/^0*//;s/^[ \t]*//;s/[ \t]*$//')"
cpu_type="$(( (cpu >> 4) & 0xFF ))"
cpu_type_hex="$(printf %x $cpu_type)"

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

case "$cpu_type_hex" in
        8)     pi3b ;;
        d)     pi3b_plus ;;
        11)    pi4 ;;
        *)     unknown_dev ;;
esac
