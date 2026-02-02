# SolarNode Elastel EG500 support Debian package

This package provides support for Elastel EG500 devices.

# USB TTY physical port names

This package installs some udev rules that create consistently named symlinks to USB TTY (serial)
devices based on the physical USB ports on the device. This is to help with configuring services
that depend on serial devices being plugged into specific ports for deployment reasons.

Links are named `/dev/ttyUSB_X` where `X` is a number staring a `1`.

Looking at the side of the device with the HDMI port to the right of the 2 USB ports labeled as
`ttyUSB_1` and `ttyUSB_2`:

```
+-------+  +---+
|   1   |  | H |
+-------+  | D |
+-------+  | M |
|   2   |  | I |
+-------+  +---+
```

# udev discovery

Run `udevadm` to print out all available attributes on a connected USB device:

```sh
# monitor
udevadm monitor -u -p

# print out all attributes
udevadm info -p $(udevadm info -q path -n /dev/ttyUSB0) -a

# test a device
udevadm test $(udevadm info -q path -n /dev/ttyUSB0)
```

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
