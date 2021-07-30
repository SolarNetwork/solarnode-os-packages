# SolarNode Raspberry Pi Bluetooth support Debian package

This directory contains packaging scripts used to enable Bluetooth support on Raspberry Pi devices.
It has been adapted from the [RPi-Distro/pi-bluetooth](https://github.com/RPi-Distro/pi-bluetooth)
package, to remove the dependency on the `raspberrypi-sys-mods` package.

# Services

This package installs a systemd `sn-hciuart.service` service and `sn-bthelper@.service` service
template for configuring the Bluetooth subsystem. Udev rules are added in 
`90-sn-pi-bluetooth.rules`.

# Packaging

This section describes how the `sn-pi-bluetooth` package is created.

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
