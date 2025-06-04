# SolarNode Application - BACnet I/O - BACnet4J

This directory contains support for building the `solarnode-app-io-bacnet-bacnet4j` package, which 
provides support for BACnet I/O in SolarNode using the BACnet4J framework. See 
[CHANGELOG](./CHANGELOG.md) for release information.

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

Run `make` to build the package, which will produce `solarnode-app-io-bacnet-bacnet4j_VERSION_all.deb`
in this directory.

:waring: **Note** you might need to use a different Ivy Settings than the default, to resolve
the external dependencies required. For example:

```sh
make SN_ANT_OPTS="-Divy.settings=../../solarnetwork-osgi-lib/ivysettings.xml"
```

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
