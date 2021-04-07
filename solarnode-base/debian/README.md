# SolarNode Base Framework

This directory contains support for building the `solarnode-base` package.

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it).

Packaging is done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-ri --no-rdoc fpm
```

# Building

Run `make` to build the package, which will produce `solarnode-base_VERSION_all.deb` in
this directory.

[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
