# SolarNode Application - GPS

This directory contains support for building the `solarnode-app-gps` package, which
provides support for collecting data from GPS devices. See the
[CHANGELOG](./CHANGELOG.md) for release information.

# GPS Receiver requirements

This package relies on `gpsd` to integrate with GPS devices. You may need to configure additional
udev rules for it to pick up your GPS hardware. For example:

```
SUBSYSTEM!="tty", GOTO="gps_rules_end"
ENV{.LOCAL_ifNum}="$attr{bInterfaceNumber}"

# Debug help
#ATTRS{idVendor}=="1546", ATTRS{idProduct}=="01a8", RUN+="/bin/sh -c 'echo == >> /tmp/udev-env.txt; env >> /tmp/udev-env.txt'"

# u-blox GPS (idProduct "u-blox GNSS receiver"); create /dev/gpsX link for GPS, register with gpsd
ATTRS{idVendor}=="1546", ATTRS{idProduct}=="01a8", ENV{.LOCAL_ifNum}=="00", SYMLINK+="gps", TAG+="systemd", ENV{SYSTEMD_WANTS}="gpsdctl@%k.service"

LABEL="gps_rules_end"
```

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it). Packaging is done via `make` with [ant][ant] and [fpm][fpm]. To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-document fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce `solarnode-app-gps_VERSION_all.deb`
in this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
