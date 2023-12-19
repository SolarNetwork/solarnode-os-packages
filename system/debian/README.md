# SolarNode system support Debian package

This directory contains packaging scripts used to create the `sn-system` Debian package, which
provides core functionality required for a SolarNode device.

## Configuration

Before installing this package several settings can be configured to tailor what services are
configured by the package. Create an `/etc/default/sn-system` file; here is the default
configuration:

```
# The display name to use for SolarNode
CFG_SOLARNODE_LABEL="SolarNode"

# Disable configuration of network related services
# CFG_WITHOUT_NETWORK=1

# Disable configuration of bash history
# CFG_WITHOUT_BASHHIST=1

# Disable the clean up (removal) of man pages
# CFG_WITHOUT_DOC_CLEAN=1

# Disable crash reboot configuration
# CFG_WITHOUT_CRASH_REBOOT=1

# Disable core dump configuration
# CFG_WITHOUT_DUMP_CORE=1

# Disable journal max use configuration
# CFG_WITHOUT_JOURNAL_MAX_USE=1

# Disable bash utility integration
# CFG_WITHOUT_BASH_UTILS=1
```

## Startup filesystem expansion

This package provides a `sn-expandfs.service` that will look for a `/boot/sn-expandfs` file when the
system boots. If found, it will invoke the provided `/usr/share/solarnode/bin/expandfs.sh` script to
make the root `SOLARNODE` filesystem expand to take up as much space as possible. This is useful
when deploying an OS image that was created for a disk smaller than the one you've deployed the
image on. For example, if you copy a Raspberry Pi image created for a 1GB SD card onto a 2GB SD
card, this will make that extra 1GB available to the OS.

The exact command the `sn-expandfs.service` runs, which you can also manually run as `root` if you
like, is:

```sh
$ /usr/share/solarnode/bin/expandfs.sh -v -o /var/local/sn-expandfs.saved
```

## Startup SSH key generation

This package provides a `sn-sshdgenkeys.service` that will generate host SSH keys when the system
boots, if they don't already exist in `/etc/ssh`. SolarNode OS images are distributed without SSH
keys, so each time the image is copied to a new disk the OS will generate a new set of keys for that
device.

## Fallback DNS resolver

A fallback DNS resolver configuration of `1.1.1.1` is included in
`etc/systemd/resolved.conf.d/sn-system-fallback-dns.conf` in case no other resolver configuration
is available.

# Packaging

This section describes how the `sn-system` package is created.

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
