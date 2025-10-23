# SolarNode Seeed Studio R1000 support Debian package

This package provides support for Seeed Studio R1000 devices.

# USB TTY physical port names

This package installs some udev rules that create consistently named symlinks to USB TTY (serial)
devices based on the physical USB ports on the device. This is to help with configuring services
that depend on serial devices being plugged into specific ports for deployment reasons.

Links are named `/dev/ttyUSB_X` where `X` is a number.

Looking at the side of the device with the HDMI port above the 2 USB ports labeled as
`ttyUSB_3` and `ttyUSB_2`:

```
+--------+
|  HDMI  |
+--------+
+---++---+
|   ||   |
| 3 || 2 |
|   ||   |
+---++---+
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

## Building the overlay

The `*.dtbo` overlay must be compiled from source. This can be done with the following commands:

```sh
apt update && apt upgrade
apt install git build-essential dkms linux-headers-rpi-v8 device-tree-compiler
git clone https://github.com/Seeed-Studio/seeed-linux-dtoverlays.git
cd seeed-linux-dtoverlays
make overlays/rpi/reComputer-R100x-overlay.dtbo
```

The generated `overlays/rpi/reComputer-R100x-overlay.dtbo` file should be copied to the
`boot/firmware/overlays` directory of this package.

[fpm]: https://github.com/jordansissel/fpm
