#!/usr/bin/env sh
#
# Reset SolarNode application.

# stop SolarNode
service solarnode stop

# remove persisted data
echo 'Removing SolarNode persistent data...'
rm -rf /usr/local/solarnode/var/*

# remove identity
echo 'Removing SolarNode identity...'
rm -f /usr/local/solarnode/conf/identity.json
rm -f /usr/local/solarnode/conf/tls/node.jks

# start SolarNode again
service solarnode start
