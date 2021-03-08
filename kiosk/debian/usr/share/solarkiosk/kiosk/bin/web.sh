#!/bin/sh
while true; do
	systemd-cat -t solarkiosk ~/bin/web.py "$@"
done
