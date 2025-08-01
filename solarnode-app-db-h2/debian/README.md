# SolarNode Application - H2 Database

This directory contains support for building the `solarnode-app-db-h2` package, which provides
the core SQL database platform for SolarNode, using the [H2][h2] database.  See the
[Change Log](./CHANGELOG.md) for release information.

> **Note** this package is a drop-in replacement for the
> [solarnode-app-db-derby](../../solarnode-app-db-derby/debian) package.

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

Run `make` to build the package, which will produce `solarnode-app-db-h2_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[h2]: https://h2database.com/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
