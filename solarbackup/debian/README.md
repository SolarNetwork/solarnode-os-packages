# SolarNode backup support package

This directory contains scripts to support OS-level backups in SolarNode.

## Backup configuration

TODO

# Building

This section describes how to build the `sn-backup` package.

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-ri --no-rdoc fpm
```

## Create package

Use `fpm` to package the service via `make`. This package is architecture independent:

```sh
$ make
```

[fpm]: https://github.com/jordansissel/fpm
