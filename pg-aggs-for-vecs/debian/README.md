# aggs_for_vecs Postgres extension for SolarNode

This package provides the [aggs_for_vecs][aggs_for_vecs] Postgres extension, which adds aggregate
functions for vectors (arrays) of numbers.

The extension is compiled for a specific Postgres major version and Debian release, so both are
included in the package name and version. For example building the 1.4.1 extension for Postgres 17
on Debian 13 produces:

```
sn-postgresql-17-aggs-for-vecs_1.4.1-1+trixie_arm64.deb
```

Debian package names cannot contain underscores, so `aggs-for-vecs` is used in the package name.
The package depends on the matching `postgresql-X` server package, e.g. `postgresql-17`.

## Build requirements

The following are required to build the package:

 * `git`, to get the extension sources
 * `make` and a C compiler
 * `pg_config` along with the server development files for the Postgres version to build for
   (17 or later)
 * [fpm][fpm], to create the package

On Debian 12 or later these can be installed like this, using Postgres 17 as an example:

```sh
sudo apt install git build-essential postgresql-server-dev-17 ruby ruby-dev

sudo gem install --no-document fpm
```

Debian 13 provides Postgres 17 itself. On Debian 12 the `postgresql-server-dev-17` package comes
from the [PGDG apt repository][pgdg-apt], which must be configured before running the commands
above. In SolarNodeOS the `sn-pgdg-repo` package does that, otherwise:

```sh
sudo apt install postgresql-common

sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
```

## Create package

Run `make` to build the extension and package it:

```sh
make
```

This will:

 1. clone the extension git repository into an `aggs_for_vecs` directory, if that does not
    already exist
 2. check out the commit or tag configured as `GIT_REF` in the `Makefile`
 3. compile the extension, and install it into a `build` directory using the paths reported by
    `pg_config`
 4. package the contents of the `build` directory

Nothing is installed into the Postgres directories of the build machine. The package version is
taken from the `default_version` of the `aggs_for_vecs.control` file in the checked out sources.

The following `make` variables can be used to customise the build:

| Variable      | Default                  | Description |
|:--------------|:-------------------------|:------------|
| `DIST`        | from `/etc/os-release`   | The distribution name to add to the package version. |
| `GIT_REF`     | the 1.4.1 release commit | The extension commit or tag to build. |
| `PG_CONFIG`   | `pg_config`              | The `pg_config` of the Postgres version to build for. |
| `PKG_VERSION` | `1`                      | The package revision, added to the extension version. |

When more than one Postgres version is installed, `pg_config` reports the newest. To build for a
specific version pass the path to its `pg_config`, like

```sh
make PG_CONFIG=/usr/lib/postgresql/17/bin/pg_config
```

To build a different version of the extension, pass the commit or tag to build, like

```sh
make GIT_REF=1.4.0
```

[aggs_for_vecs]: https://github.com/pjungwir/aggs_for_vecs
[fpm]: https://github.com/jordansissel/fpm
[pgdg-apt]: https://wiki.postgresql.org/wiki/Apt
