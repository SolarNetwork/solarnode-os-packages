#!/bin/sh
while true; do
	/usr/share/solarkiosk/bin/web.py "$@" >/dev/null 2>&1
done

