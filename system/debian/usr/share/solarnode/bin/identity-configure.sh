#!/usr/bin/env sh
#
# Configure system settings based on SolarNode identity.json.
#
# The "pretty" hostname will be set to "SolarNode X" where X is the node ID.
# The label "SolarNode" can be customized via the CFG_SOLARNODE_LABEL variable
# in /etc/default/sn-system.

CFG_SOLARNODE_LABEL="SolarNode"

CONF="/usr/share/solarnode/default/sn-system"
VENDOR_CONF="/etc/default/sn-system"

if [ -e "$CONF" ]; then
	. "$CONF"
fi
if [ -e "$VENDOR_CONF" ]; then
	. "$VENDOR_CONF"
fi

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

pretty="$CFG_SOLARNODE_LABEL $node_id"
curr_pretty="$(hostnamectl --pretty status)"
if [ "$curr_pretty" != "$pretty" ]; then
	if hostnamectl --pretty set-hostname "$pretty"; then
		echo "Configured pretty hostname as [$pretty]"
	else
		exit 1
	fi
fi
