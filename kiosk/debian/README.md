# SolarNode Web Kiosk Debian packaging

This directory contains packaging scripts used to create the `sn-kiosk` Debian package, which
provides web-based kiosk functionality to a SolarNode.


# Kiosk configuration

Once installed, the SolarNode will auto-login a `kiosk` user, which has Openbox configured to start
and launch a full-screen WebKit-based browser window. The `/home/kiosk/web/index.html` file is the
HTML shown. That file will be served by a simple Python HTTP server at the URL
`http://localhost:8081/index.html`. The default `index.html` looks for a `?url=` query parameter
and, if present, will attempt to load the URL and display it. To configure that URL, edit the
`/home/kiosk/.config/openbox/environment` file, which looks like this:

```sh
export SOLARKIOSK_URL="https%3A%2F%2Fsolarnetwork.github.io%2F"
```

**Note** that the `SOLARKIOSK_URL` value _must be URI escaped_.

There is also a setting to change the zoom level of the browser, which can be useful for scaling
the kiosk content for different sized screens:

```sh
export SOLARKIOSK_ZOOM_LEVEL="1.0"
```

Finally, there is another URL setting that can be changed to fully customize the URL loaded in the
browser. Normally you'd leave this setting alone:

```sh
export SOLARKIOSK_URL_START="http://127.0.0.1:8081/index.html?url=${SOLARKIOSK_URL}"
```


# Kiosk browser

The kiosk browser is a Python script, located at `~kiosk/bin/web.py`. This script is created only
the first time this package is installed (copied from `/usr/share/solarkiosk/bin/web.py`. The 
settings in `~kiosk/bin/web.py` can thus be customised as needed.

The browser's console log messages will be sent to the systemd journal, so you can view those using
`journalctl`.


# Packaging

This section describes how the `sn-kiosk` package is created.

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
