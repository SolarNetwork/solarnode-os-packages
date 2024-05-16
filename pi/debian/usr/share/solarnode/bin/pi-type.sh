#!/usr/bin/env sh
#
# Print out the type of Pi running on, for example "3b" or "4".
#
# See https://github.com/raspberrypi/documentation/blob/develop/documentation/asciidoc/computers/raspberry-pi/revision-codes.adoc

cpu="0x$(cat /proc/device-tree/system/linux,revision |xxd -p |sed -e 's/^0*//;s/^[ \t]*//;s/[ \t]*$//')"
cpu_type="$(( (cpu >> 4) & 0xFF ))"
cpu_type_hex="$(printf %x $cpu_type)"
mem="$(( (cpu >> 20) & 0x7 ))"

memory () {
	case "$mem" in
		0) echo "256MB" ;;
		1) echo "512MB" ;;
		2) echo "1GB" ;;
		3) echo "2GB" ;;
		4) echo "4GB" ;;
		5) echo "8GB" ;;
		*) echo ">8GB" ;;
	esac
}

cpu () {
	case "$cpu_type_hex" in
		8)  echo "3b" ;;
		d)  echo "3b+" ;;
		11) echo "4b" ;;
		12) echo "Zero 2 W" ;;
		13) echo "400" ;;
		14) echo "CM4" ;;
		15) echo "CM4S" ;;
		17) echo "5" ;;
		*)  echo "Unknown: CPU type 0x$cpu_type_hex" ;;
	esac
}

echo $(cpu) $(memory)
