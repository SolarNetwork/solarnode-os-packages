# SolarNode Application - Metrics DB - JDBC

This directory contains support for building the `solarnode-app-app-metrics-db-jdbc` package, which
provides JDBC database support for metrics in SolarNode. See the [CHANGELOG](./CHANGELOG.md) for release
information.

# Database configuration

The database must be configured via a Hikari DataSource factory configuration file
`/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-solarnode-metrics.cfg`. If one does
not already exist, this package will create a default one using the H2 database. The default
configuration is available in
`/usr/share/solarnode/example/net.solarnetwork.jdbc.pool.hikari-solarnode-metrics.cfg`.

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

Run `make` to build the package, which will produce `solarnode-app-app-metrics-db-jdbc_VERSION_all.deb`
in this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
