# SolarNode Application - Derby Database

This directory contains support for building the `solarnode-app-db-derby` package, which provides
the core SQL database platform for SolarNode, using the [Apache Derby][derby] database.  See the
[Change Log](./CHANGELOG.md) for release information.

> **Note** the [solarnode-app-db-h2](../../solarnode-app-db-h2/debian) package provides a drop-in
> alternative to this package, using the H2 database.

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it). Packaging is done via `make` with [ant][ant] and [fpm][fpm]. To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-ri --no-rdoc fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce `solarnode-app-db-derby_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[derby]: https://db.apache.org/derby/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
