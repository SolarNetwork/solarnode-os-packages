#!/usr/bin/env sh
#
# Configure system settings based on SolarNode identity.json

IDENTITY_PATH="$1"

if [ -z "$IDENTITY_PATH" ]; then
	echo "Missing identity.json path argument." 1>&2
	exit 1
elif [ ! -e "$IDENTITY_PATH" ]; then
	echo "Identity file not found at $IDENTITY_PATH." 1>&2
	exit 1
fi

node_id="$(jq '.nodeId' "$IDENTITY_PATH" 2>/dev/null)" 1>&2

if [ -z "$node_id" ]; then
	echo "Node ID not found in $IDENTITY_PATH." 1>&2
	exit 1
fi

pretty="SolarNode $node_id"
curr_pretty="$(hostnamectl --pretty status)"
if [ "$curr_pretty" != "$pretty" ]; then
	if hostnamectl --pretty set-hostname "$pretty"; then
		echo "Configured pretty hostname as [$pretty]"
	else
		exit 1
	fi
fi
