# SolarNode gpiod support Debian package

This package adds support for the Linux gpiod (GPIO device) API to SolarNode. This API was added
to Linux 4.8, and is available in Debian Linux 9 (Stretch) or later.

## `gpio` system group

The package will create a `gpio` group if one does not already exist. It will also add the `solar`
user to that group, if that user exists.

The `gpiochip*` devices created by the kernel, for example `/dev/gpiochip0`, will be assigned to
the `gpio` group, so the `solar` user can access them.

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
