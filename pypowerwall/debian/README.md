# SolarNode PyPowerwall support Debian package

This directory contains packaging scripts used to create the `sn-pypowerwall` Debian package, which
provides support functionality for integrating SolarNode with `pypowerwall`.

# Build requirements

Packaging is done via `make` with [fpm][fpm]. To get started:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

# Building

Run `make` to build the package, which will produce `sn-pypowerwall_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
