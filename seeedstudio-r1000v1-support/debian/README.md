# SolarNode Seeed Studio R1000 v1.0 support Debian package

This package provides support for Seeed Studio R1000 revision 1s devices.

# Building

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-document fpm
```

## Create package

Use `fpm` to package the service via `make`. This package is architecture independent:

```sh
$ make
```

[fpm]: https://github.com/jordansissel/fpm
