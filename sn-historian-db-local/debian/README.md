# SolarNode Historian - local Postgres

This directory contains support for building the `sn-historian-db-local` package, which sets up
the [JDBC DatumHistorian][historian] in the local SolarNode Postgres database. History is kept in
the `solarhist` and `solaruhist` schemas of the `solarnode` database, and `pg_cron` keeps the
aggregates up to date.

The node must already use Postgres (`solarnode-app-db-postgres`). For example:

```sh
sudo apt install sn-historian-db-local
```

> :warning: **Note** on a node that still uses the H2 database, installing this package switches
> SolarNode to Postgres and you lose your settings. Make a **Backup** in SolarNode first, and
> **Restore** it once SolarNode is running on Postgres. `sn-historian preflight` warns about this.

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

A SolarNode reset deletes the `solarnode` database, so it deletes the history too. The schemas
are then set up again, empty.

# Removing

Removing the package (also from the SolarNode UI) undoes the setup without restarting Postgres:

1. Removes the DataSource binding and the `pg_cron` jobs (`sn-historian disable`).
2. Takes `pg_cron` out of `shared_preload_libraries` and deletes the `pg_cron` extension, if this
   package added them. If other `pg_cron` jobs exist, `pg_cron` stays, with a warning. If
   Postgres isn't running, other jobs can't be checked, so `pg_cron` leaves the preload anyway.
3. Deletes the two settings files, unless they were changed.
4. Restarts SolarNode once `apt` is finished.

The history data stays, even on purge. Installing again picks it up where it left off.

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

