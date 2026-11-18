# SolarNode Historian - local Postgres

This directory contains support for building the `sn-historian-db-local` package, which sets up
the [JDBC DatumHistorian][historian] in the local SolarNode Postgres database. History is kept in
the `solarhist` and `solaruhist` schemas of the `solarnode` database, and `pg_cron` keeps the
aggregates up to date.

The node must already use Postgres (`solarnode-app-db-postgres`). For example:

```sh
sudo apt install sn-historian-db-local
```

# What it does

When installed, the package:

1. Adds `pg_cron` to `shared_preload_libraries` in `/etc/postgresql/17/main/postgresql.conf`.
2. Adds two Postgres settings files to `/etc/postgresql/17/main/conf.d/`:
   * `solarnode-historian.conf`: `pg_cron` and worker settings
   * `zz-solarnode-historian-sizing.conf`: memory and WAL sizing for small devices
3. Restarts Postgres. If Postgres fails to start, it undoes steps 1 and 2 and starts Postgres
   again.
4. Starts `sn-historian-ensure.service`, which runs [sn-historian](../../sn-historian/debian/)
   `ensure` to set up the schemas.

Steps that are already done are skipped. `sn-historian-ensure.service` also runs every time
Postgres starts, so the schemas come back after a SolarNode reset. To see its log:

```sh
journalctl -u sn-historian-ensure
```

# Settings

To skip the sizing file, set `CFG_WITHOUT_POSTGRES_SIZING=1` in
`/etc/default/sn-historian-db-local`.

# Versions

This package needs an exact `sn-historian` version (`HISTORIAN_VERSION` in the `Makefile`), so
publish the two packages together.

# Building

Packaging is done via `make` with [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

Then run `make`, which produces `sn-historian-db-local_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
[historian]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.datumhistorian.jdbc
