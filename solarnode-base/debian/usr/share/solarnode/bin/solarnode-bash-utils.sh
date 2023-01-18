#!/bin/bash

# provide hook to load in shell utilities from directory files
if [ -d /usr/share/solarnode/bash-utils.d ]; then
	for f in $(ls -1 /usr/share/solarnode/bash-utils.d/*.sh 2>/dev/null); do
		. "$f"
	done
fi

sn-home () {
	echo '/var/lib/solarnode'
}

sn-pid () {
	systemctl show --property MainPID --value solarnode
}

sn-log-path () {
	local p=""
	if [ -e /etc/solarnode/env.conf ]; then
		p="$(grep SOLARNODE_LOGDIR /etc/solarnode/env.conf |cut -d= -f 3)"
	fi
	if [ -z "$p" -a -e /usr/lib/systemd/system/solarnode.service ]; then
		p="$(grep SOLARNODE_LOGDIR /usr/lib/systemd/system/solarnode.service |cut -d= -f 3)"
	fi
	if [ -z "$p" ]; then
		p=/run/solarnode/log
	fi
	echo $p/solarnode.log
}

sn-log-tail () {
	tail "$@" $(sn-log-path)
}

sn-ctl () {
	sudo systemctl "$1" solarnode
}

sn-stop () {
	sn-ctl stop
}

sn-start () {
	sn-ctl start
}

sn-restart () {
	sn-ctl restart
}

sn-status () {
	sn-ctl status
}
