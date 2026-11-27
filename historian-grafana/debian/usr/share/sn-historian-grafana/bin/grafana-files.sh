#!/bin/sh -e

# Run as root before grafana-server starts: create the files the Grafana settings read with
# $__file{}, as Grafana won't start while one is missing. The data source token and secret are
# empty until set, and the admin password is generated on the node itself (not when an image is
# built), the first time Grafana starts.

DIR=/etc/sn-historian-grafana

install -d -o root -g grafana -m 750 "$DIR"
for f in token secret; do
	if [ ! -e "$DIR/$f" ]; then
		install -o root -g grafana -m 640 /dev/null "$DIR/$f"
	fi
done
if [ ! -e "$DIR/admin-password" ]; then
	(umask 077; tr -dc 'A-Za-z0-9' </dev/urandom 2>/dev/null | head -c 24 >"$DIR/admin-password.tmp")
	chown root:grafana "$DIR/admin-password.tmp"
	chmod 640 "$DIR/admin-password.tmp"
	mv "$DIR/admin-password.tmp" "$DIR/admin-password"
fi
