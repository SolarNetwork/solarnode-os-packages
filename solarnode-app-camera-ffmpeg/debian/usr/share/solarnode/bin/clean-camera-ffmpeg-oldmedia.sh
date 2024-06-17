#!/bin/sh

CLEAN_DIR="/var/lib/solarnode/var/ffmpeg-images"
DEFAULTS="/etc/default/solarnode-app-camera-ffmpeg"
HELPER="/usr/share/solarnode/bin/clean-oldfiles.sh"
FFMPEG_MEDIA_KEEP_DAYS="5"

if [ -e "$DEFAULTS" ]; then
	. "$DEFAULTS"
fi

if [ -d "$CLEAN_DIR" -a -x "$HELPER" ]; then
	echo "Cleaning FFmpeg media files older than $FFMPEG_MEDIA_KEEP_DAYS days from $CLEAN_DIR."
	$HELPER -D "$FFMPEG_MEDIA_KEEP_DAYS" "$CLEAN_DIR"
fi
