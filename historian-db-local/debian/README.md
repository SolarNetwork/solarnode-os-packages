# SolarNode Historian - local Postgres

This package sets up the [JDBC DatumHistorian][historian] in the node's own Postgres database. The
node must already use Postgres (`solarnode-app-db-postgres`).

```sh
sudo apt install sn-historian-db-local
sudo systemctl restart solarnode
```

# What it does

It runs the "Postgres setup" steps of the [plugin README][plugin-readme]:

1. Loads `pg_cron` in Postgres, restarting Postgres if needed.
2. Creates the `solarhist` and `solaruhist` history schemas in the `solarnode` database, and the
   `pg_cron` jobs that keep their aggregates up to date.
3. Lets the historian use the SolarNode Postgres connection pool.

Step 2 runs every time Postgres starts, and skips anything that already exists. So it also works
when installed in a SolarNodeOS image, and after a SolarNode reset.

# Removing

Removing the package leaves the history and the Postgres settings in place. It prints the commands
to clean them up by hand.

# Tablespace

To keep the history on another drive, set up a tablespace before installing the package:

1. Mount the drive so a missing drive doesn't stop Postgres, for example in `/etc/fstab`:

   ```
   UUID=... /mnt/history ext4 defaults,noatime,nofail,x-systemd.device-timeout=10s,x-systemd.before=postgresql@17-main.service 0 2
   ```
2. Create the tablespace:

   ```sh
   sudo install -d -o postgres -g postgres -m 700 /mnt/history/17
   sudo -u postgres psql -c "CREATE TABLESPACE history LOCATION '/mnt/history/17'"
   ```
3. Set `TABLESPACE=history` in `/etc/default/sn-historian-db-local`.

# Building

Run `make` to build the package. It needs [fpm][fpm].

[fpm]: https://github.com/jordansissel/fpm
[historian]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.datumhistorian.jdbc
[plugin-readme]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.datumhistorian.jdbc/README.md#postgres-setup

