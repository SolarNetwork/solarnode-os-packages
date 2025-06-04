# SolarNode Base Framework (FreeBSD)

This directory contains support for building the `solarnode-base` package for the FreeBSD OS.
See [CHANGELOG](./CHANGELOG.md) for release information.

# Base directories

The OS packages install files in various ["base" directories][base-dirs].

| Name              | Path |
|:------------------|:------------|
| `SOLARNODE_CONF`  | `/usr/local/solarnode/conf` |
| `SOLARNODE_HOME`  | `/usr/local/solarnode` |
| `SOLARNODE_RUN`   | `/usr/local/solarnode/var` |
| `SOLARNODE_SHARE` | `/usr/local/solarnode` |

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

Run `make` to build the package, which will produce `solarnode-app-core_VERSION.txz` in
this directory.

[ant]: https://ant.apache.org/
[base-dirs]: ../README.md#base-directories
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
