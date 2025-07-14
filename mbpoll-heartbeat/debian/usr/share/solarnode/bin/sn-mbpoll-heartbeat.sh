#!/bin/sh
set -e

MODBUS_ADDR="${MODBUS_ADDR:-127.0.0.1}"
MODBUS_UNIT="${MODBUS_UNIT:-1}"
MODBUS_REGISTER="${MODBUS_REGISTER:-1001}"
MODBUS_OPTS="${MODBUS_OPTS:--t 4:hex -W}"

/usr/bin/mbpoll -q -0 -1 ${MODBUS_OPTS} -a ${MODBUS_UNIT} -r ${MODBUS_REGISTER} ${MODBUS_ADDR} \
	$(printf '%016x\n' "$(($(date +%s%3N)))" \
		| sed 's/../& /g' \
		| awk '{for(i = 1; i <= 8; i += 2) printf "0x%s%s ", $i, $(i+1)}')
