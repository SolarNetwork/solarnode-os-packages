# SolarNode Platform - log4j2 Extra

This directory contains support for building the `solarnode-base-log4j2-extra` package. This adds 
support for the [`EventAdmin` Appender][eaa] for publishing logs to the internal `EventAdmin`, so
log messages can then be processed by SolarNode plugins, such as publishing them as a [datum stream
to SolarFlux][solarflux].

See [CHANGELOG](./CHANGELOG.md) for release information.

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it). Packaging is done via `make` with [ant][ant] and [fpm][fpm]. To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-document fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce `solarnode-base-log4j2-extra_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[eaa]: https://github.com/SolarNetwork/solarnetwork-common/tree/develop/net.solarnetwork.common.log4j2#eventadmin-appender
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
[solarflux]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.upload.flux#eventadmin-log-datum-stream
