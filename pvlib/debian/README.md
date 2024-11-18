# SolarNode pvlib support Debian package

This directory contains packaging scripts used to create the `sn-pvlib` Debian package, which
provides support functionality for integrating SolarNode with `pvlib` and supports the SolarNode
[OS Statistics Datum Source][pvlib-filter] plugin.

> :warning: **Note** that on top of the disk space required by Python, the pvlib framework
> depends on many Python packages and in total can consume 350+ MB of additional disk space.

# Build requirements

Packaging is done via `make` with [fpm][fpm]. To get started:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-ri --no-rdoc fpm
```

# Building

Run `make` to build the package, which will produce `sn-pvlib_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
[pvlib-filter]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.datum.filter.pvlib
