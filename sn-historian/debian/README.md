# SolarNode Historian helper

This directory contains support for building the `sn-historian` package, which provides the
`sn-historian` command. It sets up and checks the [JDBC DatumHistorian][historian] schemas in the
SolarNode Postgres database.

You don't normally install this package directly. Install
[sn-historian-db-local](../../sn-historian-db-local/debian/) instead, which uses it.

# Commands

The command is `/usr/share/solarnode/bin/sn-historian.sh`, linked as
`/var/lib/solarnode/bin/sn-historian`. Run it as `root`:

| Command               | Description                                                                                                                                                                                                                                                 |
|:----------------------|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `ensure`              | Set up whatever is missing: extensions, schemas, `pg_cron` jobs and the DataSource. Safe to run again.                                                                                                                                                      |
| `status`              | Show the historian setup. Exits `1` if something is wrong.                                                                                                                                                                                                  |
| `print-sql`           | Print the setup as commands, to run by hand. Doesn't need `root`.                                                                                                                                                                                           |
| `preflight`           | Warn about anything missing that the historian needs.                                                                                                                                                                                                       |
| `disable`             | Remove the DataSource binding and the `pg_cron` jobs (and `pg_cron` itself, if `sn-historian-db-local` added it), keeping the history. Package removal runs this. While `sn-historian-db-local` is installed, the next Postgres start sets it all up again. |
| `reset-history --yes` | Delete all the history and start again. Stops SolarNode while it runs.                                                                                                                                                                                      |
| `restart-solarnode`   | Restart SolarNode once `apt` is finished. Used by `sn-historian-restart-solarnode.service`.                                                                                                                                                                 |

`ensure` marks each schema it sets up with a comment, for example:

```json
{"component":"datumhistorian-jdbc","schema":1,"agg":true,"sql":"b3e6b5fa83b6"}
```

If a schema is incomplete or has a different version, `ensure` leaves it alone and fails.

`ensure` restarts SolarNode when the historian needs to load something new: the DataSource
changed, a schema was created while SolarNode was running, or a new plugin jar was installed.
The restart waits until `apt` has been idle for 10 seconds, so it doesn't interrupt an install.

# Remove, start over and backup

Removing the package runs `disable`. It never deletes history: the schemas and their data stay,
and installing again picks them up where they left off. To delete the history after removing,
drop the schemas by hand:

```sh
sudo -u postgres psql -d solarnode -c 'DROP SCHEMA solarhist CASCADE; DROP SCHEMA solaruhist CASCADE'
```

`reset-history --yes` deletes the history while installed. It stops SolarNode, drops the schemas,
runs `ensure`, then starts SolarNode again. SolarNode must be stopped while the schemas are
dropped, or it mixes up datum types and time zones. Run it over SSH, not from SolarNode. It
refuses a schema that `ensure` didn't mark, or that other objects depend on, unless you add
`--force`.

A SolarNode Backup includes `/etc/default/sn-historian`. After a Restore, run
`sudo /usr/share/solarnode/bin/sn-historian.sh ensure` to apply it.

# Settings

The defaults are in `/usr/share/solarnode/default/sn-historian`. To change them, set them in
`/etc/default/sn-historian`. You can also set them for a single run, for example
`sudo HISTORIAN_AGG=off /usr/share/solarnode/bin/sn-historian.sh ensure`, but `/etc/default/sn-historian` takes priority.

| Setting                  | Default                                                                            | Description                                                        |
|:-------------------------|:-----------------------------------------------------------------------------------|:-------------------------------------------------------------------|
| `HISTORIAN_DB`           | `solarnode`                                                                        | The database for the history schemas.                              |
| `HISTORIAN_DB_OWNER`     | `solarnode`                                                                        | The role that owns the history schemas.                            |
| `HISTORIAN_SCHEMAS`      | `solarhist solaruhist`                                                             | The history schemas.                                               |
| `HISTORIAN_AGG`          | `on`                                                                               | Set to `off` to skip the aggregate tables and their `pg_cron` job. |
| `HISTORIAN_AGG_SCHEDULE` | `* * * * *`                                                                        | How often the aggregate job runs.                                  |
| `HISTORIAN_SQL_DIR`      | `/usr/share/solarnode/datumhistorian-jdbc/sql`                                     | The historian SQL.                                                 |
| `HISTORIAN_POOL_CFG`     | `/etc/solarnode/services/net.solarnetwork.jdbc.pool.hikari-solarnode-postgres.cfg` | The SolarNode DataSource to use.                                   |
| `HISTORIAN_PG_WAIT`      | `60`                                                                               | Seconds `ensure` waits for Postgres.                               |

# Files

`sn-historian.sh` only runs the command. The code is in `/usr/share/solarnode/sn-historian/`:

| File           | Contents                     |
|:---------------|:-----------------------------|
| `common.sh`    | Settings and shared helpers. |
| `ensure.sh`    | `ensure`                     |
| `restart.sh`   | `restart-solarnode`          |
| `status.sh`    | `status`                     |
| `print-sql.sh` | `print-sql`                  |
| `preflight.sh` | `preflight`                  |
| `lifecycle.sh` | `disable`, `reset-history`   |

`help` and `print-sql` also work from this directory, without installing.

To check the scripts with [ShellCheck][shellcheck], run `./shellcheck.sh`.

# Building

Packaging is done via `make` with [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

Then run `make`, which produces `sn-historian_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
[historian]: https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.datumhistorian.jdbc
[shellcheck]: https://www.shellcheck.net/

