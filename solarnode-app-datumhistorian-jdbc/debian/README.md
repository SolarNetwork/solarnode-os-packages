# SolarNode Application - Datum Historian JDBC

This directory contains support for building the `solarnode-app-datumhistorian-jdbc` package, which
provides a JDBC (database) implementation of the SolarNode `DatumHistorian` and
`FilterableDatumHistorian` APIs.

To keep the history in the node's own Postgres database, install
[sn-historian-db-local](../../sn-historian-db-local/debian/) as well.

# Database SQL

The package installs the plugin's Postgres SQL scripts in
`/usr/share/solarnode/datumhistorian-jdbc/sql`. The `historian-setup.sql` script runs the
"Postgres setup" steps of the [plugin README][plugin-readme], and is safe to run again:

```sh
sudo -u postgres psql -X -f /usr/share/solarnode/datumhistorian-jdbc/sql/historian-setup.sql
```

> :warning: **Note** that the scripts include a change not yet in the plugin repository: new
> partitions are created in the tablespace of their table.

# External database

To keep the history in a Postgres database on another server, run `historian-setup.sql` against it
(with `-h HOST -v historian_db=DB -v historian_owner=ROLE`). Then add a connection pool for the
historian in `/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-history.cfg`, and restart
SolarNode:

```
service.factoryPid = net.solarnetwork.jdbc.pool.hikari
serviceProperty.db = node-datum-history
dataSourceFactory.filter = (osgi.jdbc.driver.class=org.postgresql.Driver)
pingTest.query = SELECT CURRENT_DATE
minimumIdle = 1
maximumPoolSize = 4

dataSource.url = jdbc:postgresql://HOST/DB
dataSource.user = ROLE
dataSource.password = PASSWORD
```

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

