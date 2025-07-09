# SolarNode Application - Postgres Database

This directory contains support for building the `solarnode-app-db-postgres` package, which
provides the core SQL database platform for SolarNode, using the [Postgres][postgres] database.
See the [Change Log](./CHANGELOG.md) for release information.

This package depends on a `postgresql-17` package, assumed to match the structure as provided by
the [Postgres Global Development Group (PGDG) apt repository](https://wiki.postgresql.org/wiki/Apt).
The [sn-pgdg-repo](../../pgdg-repo/debian/) package can be used to integrate that repository into
SolarNode, and should be installed before this package. For example:

```sh
sudo apt install sn-pgdg-repo
sudo apt update
sudo apt install solarnode-app-db-postgres
```

> :warning: **Note** if migrating an existing SolarNode from a different database platform, you
> must perform a **Backup** before installing this package in order to preserve your settings, and
> after installing this package you can **Restore** that backup, which will migrate the database
> data into Postgres.

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

Run `make` to build the package, which will produce `solarnode-app-db-postgres_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[postgres]: https://www.postgresql.org/
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
