# SolarNode Application - Datum Historian JDBC

This directory contains support for building the `solarnode-app-datumhistorian-jdbc` package, which
provides a JDBC (database) implementation of the SolarNode `DatumHistorian` and
`FilterableDatumHistorian` APIs.

# Database SQL

The package also installs the plugin's Postgres SQL scripts in
`/usr/share/solarnode/datumhistorian-jdbc/sql`. These are:

- `postgres-init.sql`
- `postgres-init-agg.sql`
- `postgres-init-agg-cron.sql`

These scripts are used in the "Postgres setup"
section of the [plugin README][plugin-readme].

# Build requirements

You must clone the [solarnetwork-build](https://github.com/SolarNetwork/solarnetwork-build/)
repository in this directory (or make a symlink to it). Packaging is done via `make` with
[ant](https://ant.apache.org/) and [fpm](https://github.com/jordansissel/fpm). To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-document fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce
`solarnode-app-datumhistorian-jdbc_VERSION_all.deb` in this directory.

[plugin-readme]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.datumhistorian.jdbc/README.md#postgres-setup

