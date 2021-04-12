#!/bin/bash

# provide hook to load in shell utilities from directory files
if [ -d /usr/local/solarnode/bash-utils.d ]; then
	for f in $(ls -1 /usr/local/solarnode/bash-utils.d/*.sh 2>/dev/null); do
		. "$f"
	done
fi

sn-home () {
	echo '/usr/local/solarnode'
}

sn-log-path () {
	echo '/usr/local/solarnode/var/log/solarnode.log'
}

sn-log-tail () {
	tail "$@" $(sn-log-path)
}

sn-ctl () {
	sudo service solarnode "$1"
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
