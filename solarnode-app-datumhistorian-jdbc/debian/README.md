# SolarNode Application - Datum Historian JDBC

This directory contains support for building the `solarnode-app-datumhistorian-jdbc` package, which
provides a JDBC (database) implementation of the SolarNode `DatumHistorian` and
`FilterableDatumHistorian` APIs.

To keep the history in the node's own Postgres database, install
[sn-historian-db-local](../../sn-historian-db-local/debian/), which sets it all up.

# Database SQL

The package installs the plugin's Postgres SQL scripts in
`/usr/share/solarnode/datumhistorian-jdbc/sql`:

| Script                             | Description                                                                                                         |
|:-----------------------------------|:--------------------------------------------------------------------------------------------------------------------|
| `postgres-init.sql`                | The `solarhist` schema.                                                                                             |
| `postgres-init-agg.sql`            | The `solarhist` aggregate tables.                                                                                   |
| `postgres-init-solaruhist.sql`     | The `solaruhist` schema: `postgres-init.sql` with the schema renamed, made when the package is built.               |
| `postgres-init-agg-solaruhist.sql` | The `solaruhist` aggregate tables, made the same way.                                                               |
| `postgres-init-agg-cron.sql`       | The `pg_cron` job of one schema's aggregates.                                                                       |
| `historian-setup.sql`              | Runs all of the above, as in the "Postgres setup" section of the [plugin README][plugin-readme]. Safe to run again. |

`historian-setup.sql` (with its `historian-schema.sql` and `historian-cron.sql` parts) is a `psql`
script. Run it as a superuser:

```sh
sudo -u postgres psql -X -f /usr/share/solarnode/datumhistorian-jdbc/sql/historian-setup.sql
```

It creates the `aggs_for_vecs` and `pg_cron` extensions, sets `jit = off` on the database, creates
the `solarhist` and `solaruhist` schemas unless they already exist, and schedules their `pg_cron`
jobs unless they are already scheduled. `pg_cron` must already be in `shared_preload_libraries`.
Add `-v tablespace=NAME` to create the schemas in an existing tablespace.

> :warning: **Note** the scripts include a change to the plugin SQL that is not yet in the plugin
> repository: new partitions are created in the tablespace of their table.

# External database

To keep the history in a Postgres database on another server, run `historian-setup.sql` against
that server (add `-h HOST -v historian_db=DB -v historian_owner=ROLE`), or follow the
[plugin README][plugin-readme]. Then give the historian a connection pool of its own, as a
`/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-history.cfg` file like this:

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

and restart SolarNode.

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

