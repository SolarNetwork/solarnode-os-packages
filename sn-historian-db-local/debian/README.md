# SolarNode Historian - local Postgres

This directory contains support for building the `sn-historian-db-local` package, which sets up
the [JDBC DatumHistorian][historian] in the node's own Postgres database. History is kept in the
`solarhist` and `solaruhist` schemas of the `solarnode` database, and `pg_cron` keeps their
aggregates up to date.

The node must already use Postgres (`solarnode-app-db-postgres`):

```sh
sudo apt install sn-historian-db-local
```

Then restart SolarNode, so the historian finds its database.

# What it does

The package runs the "Postgres setup" steps of the [plugin README][plugin-readme]:

1. Adds `pg_cron` to `shared_preload_libraries` in `/etc/postgresql/17/main/postgresql.conf`.
2. Adds `/etc/postgresql/17/main/conf.d/solarnode-historian.conf`, with
   `max_worker_processes = 16` and `cron.use_background_workers = on`, if it is missing.
3. Adds `node-datum-history` to the SolarNode Postgres connection pool, in
   `/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-solarnode-postgres.cfg`.
4. Restarts Postgres, if `pg_cron` isn't loaded yet.
5. Runs `sn-historian-db-local.service`, which runs the plugin package's `historian-setup.sql`:
   the `aggs_for_vecs` and `pg_cron` extensions, `jit = off`, the two schemas and their `pg_cron`
   jobs. A schema or job that already exists is left as it is.

`sn-historian-db-local.service` runs every time Postgres starts, after
`solarnode-app-db-postgres.service`. So if Postgres isn't running when the package is installed,
as when building a SolarNodeOS image, the schemas are created when it starts. After a SolarNode
reset, which deletes the `solarnode` database, the schemas are created again, empty.

# Removing

Removing (or purging) the package only disables `sn-historian-db-local.service`. The history data,
the `pg_cron` jobs, the extensions and the Postgres and connection pool settings all stay, and
installing again picks them up. The removal prints the commands to clean them up by hand.

# Tablespace

To keep the history on another drive, create a tablespace for it before installing the package:

1. Mount the drive, ordered before Postgres but not required by it, so a missing drive doesn't
   stop Postgres and the SolarNode settings with it. For example, in `/etc/fstab`:

   ```
   UUID=... /mnt/history ext4 defaults,noatime,nofail,x-systemd.device-timeout=10s,x-systemd.before=postgresql@17-main.service 0 2
   ```

   Don't use `RequiresMountsFor` for this.
2. Create the tablespace in a directory on the drive:

   ```sh
   sudo install -d -o postgres -g postgres -m 700 /mnt/history/17
   sudo -u postgres psql -c "CREATE TABLESPACE history LOCATION '/mnt/history/17'"
   ```
3. Set `TABLESPACE=history` in `/etc/default/sn-historian-db-local`.

The schemas' tables and indexes, including the partitions created later, are then kept in the
tablespace. Their identity sequences stay in the default tablespace, as Postgres can't place
sequences in a tablespace. The setting only applies when a schema is created: it doesn't move an
existing schema.

# Postgres sizing

The package doesn't change the Postgres memory or WAL settings, which `solarnode-app-db-postgres`
sets for the whole node in `/etc/postgresql/17/main/conf.d/solarnode.conf`.

# Building

Packaging is done via `make` with [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

Then run `make`, which produces `sn-historian-db-local_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
[historian]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.datumhistorian.jdbc
[plugin-readme]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.datumhistorian.jdbc/README.md#postgres-setup
