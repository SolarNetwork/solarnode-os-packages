# SolarNode Application - Protobuf

This directory contains support for building the `solarnode-app-protobuf` package. This adds 
[Protobuf][protobuf] support to the SolarNode platform. See [CHANGELOG](./CHANGELOG.md) for release
information.

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

# Backports

Some versions might rely on Debian backports. To use the backports, add a source and
import the necessary keys first. For example:

```sh
echo 'deb http://deb.debian.org/debian buster-backports main' >/etc/apt/sources.list.d/buster-backports.list
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 648ACFD622F3D138
apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 04EE7237B7D453EC
```

# Building

Run `make` to build the package, which will produce `solarnode-app-protobuf_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[protobuf]: https://developers.google.com/protocol-buffers
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
