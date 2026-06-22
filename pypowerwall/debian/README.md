# SolarNode PyPowerwall support Debian package

This directory contains packaging scripts used to create the `sn-pypowerwall` Debian package, which
provides support functionality for integrating SolarNode with `pypowerwall`.

## Network ping configuration

The `sn-pypowerwall-reconnect` timer runs periodically to test that the Powerwall WiFi network is
reachable. A `/etc/default/sn-pypowerwall` file can be created to customize this service's settings.
A default version of these settings are stored in `/usr/share/solarnode/default/sn-pypowerwall`,
so that file can be copied to `/etc/defatul` to tweak the settings.

Here :

```
# Enable auto network restart (1) or disable (0)
AUTO_RECONNECT_ENABLE=1

# Network interface to check
NET_INTERFACE="wlan0"

# Host to ping for reachability
PING_HOST="192.168.91.1"
```

## Building

The build uses `make` and `fpm`.

### Build requirements

Packaging is done via `make` with [fpm][fpm]. To get started:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

### Building

Run `make` to build the package, which will produce `sn-pypowerwall_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
