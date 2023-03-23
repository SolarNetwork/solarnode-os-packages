# SolarNode Application - MQTT I/O

This directory contains support for building the `solarnode-app-io-mqtt` package, which
provides support for MQTT I/O APIs in SolarNode. See the [CHANGELOG](./CHANGELOG.md) for release
information.

> :warning: **Note** that a corresponding API implementation package must also be installed,
> such as the `solarnode-app-io-mqtt-netty` package.

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it). Packaging is done via `make` with [ant][ant] and [fpm][fpm]. To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-ri --no-rdoc fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce `solarnode-app-io-mqtt_VERSION.txz`
in this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
