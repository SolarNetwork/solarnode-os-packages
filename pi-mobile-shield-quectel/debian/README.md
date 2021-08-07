# SolarNode Mobile Shield (Quectel) Debian package

This directory contains packaging scripts used to create the `sn-pi-mobile-shield-quectel`
Debian package, which provides configuration and support for Quectel-based 3/4G shields. The goal of
this package is to configure, start, and maintain a mobile network connection on the shield's modem.

# Services

The `sn-pi-mobile-pppd` service manages the `pppd` daemon, but is not installed. The
`sn-pi-mobile-reconnect` service is managed by a timer, that runs the
`/usr/share/solarnode/bin/sn-pi-mobile-reconnect.sh` script to verify if the `1.1.1.1` DNS service
can be reached via `ping`. If not, the `sn-pi-mobile-pppd` service is restarted.

# APN configuration

The APN of the mobile network must be configured in the `TODO` file. This is defaulted to `vodafone`
but must match the name of your network carrier.

# Packaging

This section describes how the `sn-pi-mobile-shield-quectel` package is created.

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

To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster
```

[fpm]: https://github.com/jordansissel/fpm
