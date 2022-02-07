# SolarNode Bluetooth Setup Debian package

This directory contains packaging scripts used to enable SolarNode Bluetooth Setup support.

# Services

This package enables a systemd `solarnode-bt-setup-peripheral.service` service.

# Packaging

This section describes how the `solarnode-bluetooth-setup` package is created.

## Packaging requirements

Packaging done via [fpm][fpm] and `make`. To install `fpm`:

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
