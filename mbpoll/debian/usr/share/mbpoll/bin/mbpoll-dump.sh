#!/usr/bin/env bash
#
# Helper script to dump ranges of Modbus registers using the mbpoll command.

MBPOLL_ARGS="-q"

DEVICE=""
REGS=""
DRY_RUN=""

do_reg_help () {
	echo
	echo "For example, the following register lists are equivalent (first 50, next 25):"
	echo '    '"'"'0:50, 50:25'"'"
	echo '    '"'"'[0..49], [50..74]'"'"
	echo
	echo 'You can pass a -n option to print the mbpoll commands without invoking mpboll.'
}

while getopts ":01a:Bb:d:l:m:no:p:P:s:t:" opt; do
	case $opt in
		n) DRY_RUN='1' ;;
		\?)
			echo "Unsupported argument: ${OPTARG}"
			exit 1
			;;
		
		*)
			if [ -n "$OPTARG" ]; then
				idx=$((OPTIND - 2))
			else
				idx=$((OPTIND - 1))
			fi
			MBPOLL_ARGS="${MBPOLL_ARGS} ${!idx}"
			if [ -n "$OPTARG" ]; then
				MBPOLL_ARGS="${MBPOLL_ARGS} ${OPTARG}"
			fi
			;;
	esac
done

shift $(($OPTIND - 1))

if [ -z "$1" ]; then
	echo "Pass mbpoll device (port or hostname) followed by register list."
	do_reg_help
	exit 1
fi

if [ -z "$2" ]; then
	echo "Pass register list to dump, in 'reg:len, reg:len,...' or '[reg:reg], [reg:reg],...' form."
	do_reg_help
	exit 1
fi

DEVICE="$1"
shift
REGS="$*"

echo "# Cmd: mbpoll ${MBPOLL_ARGS} $DEVICE"

if echo "$REGS" |grep -q '\['; then	
	#echo '[0..49], [50..74]' \
	echo "$REGS" \
	|awk 'BEGIN {RS=", "; FS="\\.\\."} {r=substr($1,2);e=substr($2,1,length($2)-1);printf("-r %d -c %d\n", r,(e-r+1))}' \
	|while read p; 
		do echo "# $p"
		if [ -z "$DRY_RUN" ]; then
			mbpoll ${MBPOLL_ARGS} ${DEVICE} $p
		fi
	done
else
	#echo 0:50, 50:25 \
	echo "$REGS" \
	|awk 'BEGIN {RS=", "; FS=":"} {printf("-r %d -c %d\n", $1, $2)}' \
	|while read p; do
		echo "# $p";
		if [ -z "$DRY_RUN" ]; then
			mbpoll ${MBPOLL_ARGS} ${DEVICE} $p
		fi
	done
fi
