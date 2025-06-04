# SolarNode Web Kiosk (Weston) Debian packaging

This directory contains packaging scripts used to create the `sn-kiosk-wpe` Debian package, which
provides web-based kiosk functionality to a SolarNode.

# Kiosk configuration

Once installed, the SolarNode will auto-login a `kiosk` user, which has `weston` configured to start
and launch a full-screen WebKit-based browser window. The `/home/kiosk/web/index.html` file is the
HTML shown. The default `index.html` looks for a `?url=` query parameter
and, if present, will attempt to load the URL and display it. To configure that URL, edit the
`/home/kiosk/.config/solarkiosk.conf` file, which looks like this:

```sh
# Define the URL-escaped URL to redirect to when the network comes up
SOLARKIOSK_URL="https%3A%2F%2Fsolarnetwork.github.io%2F"

# Set a zoom level for the web view; for example to scale 720p to 1080p set to 1.5
SOLARKIOSK_ZOOM_LEVEL="1.0"
```

**Note** that the `SOLARKIOSK_URL` value _must be URI escaped_.

# Kiosk browser

The kiosk browser is `cog`, launched via `~kiosk/bin/kiosk`. This script is created only
the first time this package is installed (copied from `/usr/share/solarkiosk/bin/kiosk`.

# Packaging

This section describes how the `sn-kiosk-wpe` package is created.

## Packaging requirements

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
