# SolarNode Mobile Shield (Quectel) Debian package

This directory contains packaging scripts used to create the `sn-pi-mobile-shield-quectel`
Debian package, which provides configuration and support for Quectel-based 3/4G shields. The goal of
this package is to configure, start, and maintain a mobile network connection on the shield's modem.

> :warning: This package has been superseded by the
[sn-pi-mobile-shield-usb](../../pi-mobile-shield-usb/debian) package.

# Services

The `sn-mobile-shield-quectel-pppd` service manages the `pppd` daemon, but is not activated. The
`sn-mobile-shield-quectel-reconnect` service is managed by a timer, that runs the
`/usr/share/solarnode/bin/mobile-shield-quectel-reconnect.sh` script to verify if the `1.1.1.1` DNS
service can be reached via `ping`. If not, the `sn-mobile-shield-quectel-pppd` service is
restarted.

# Configuration

Several aspects of the PPP connection can be easily customized, mostly in the `/etc/ppp` directory.

## Network ping configuration

The `sn-mobile-shield-quectel-reconnect` timer runs periodically to test that the network is
reachable. The `/etc/default/sn-pi-mobile-shield` file contains the various parameters that can be
configured:

```
# Enable the auto-reconnect task
AUTO_RECONNECT_ENABLE=1

# The network interface to test for
NET_INTERFACE="ppp0"

# The host or IP address to ping
PING_HOST="1.1.1.1"
```

The `/etc/ppp` directory contains all the PPP configuration of the mobile network connection.
The default setup looks like this:

```
/etc/ppp
├── chatscripts
│   ├── apn -> /usr/share/solarnode/example/mobile-shield-chat-apn
│   ├── chat-connect
│   ├── chat-disconnect
│   ├── initiate -> /usr/share/solarnode/example/mobile-shield-chat-initiate
│   ├── mode -> mode.none
│   ├── mode.none
│   ├── pin -> pin.none
│   └── pin.none
├── ip-down
├── ip-down.d
│   └── 10-sn-mobile-shield-network-restart
├── options -> /usr/share/solarnode/example/mobile-shield-ppp-options
└── peers
    └── sn-provider
```

## APN configuration

The APN of the mobile network must be configured in the `/etc/ppp/chatscripts/apn` file, which is
a symlink to the APN configuration you want to use. This defaults to
`/usr/share/solarnode/example/mobile-shield-chat-apn`, which uses the APN value `vodafone`.

To customize, create a `/etc/ppp/chatscripts/apn.mycarrier` file with the necessary settings, e.g.

```
AT+CGDCONT=1,"IP","internet"
```

Then create a symlink to that from `/etc/ppp/chatscripts/apn`, e.g.

```sh
ln -sf apn.mycarrier /etc/ppp/chatscripts/apn
```

## Initiate configuration

The initiation of the mobile network must be configured in the `/etc/ppp/chatscripts/initiate` file,
which is a symlink to the configuration you want to use. This defaults to
`/usr/share/solarnode/example/mobile-shield-chat-initiate`, which contains `ATD*99#`.

To customize, create a `/etc/ppp/chatscripts/initiate.mycarrier` file with the necessary settings, e.g.

```
ATD*99***3#
```

Then create a symlink to that from `/etc/ppp/chatscripts/initiate`, e.g.

```sh
ln -sf initiate.mycarrier /etc/ppp/chatscripts/initiate
```

## PIN configuration

Create a `/etc/ppp/chatscripts/pin.code` file with the needed PIN, e.g.

```
AT+CPIN=1234
```

Then create a symlink to that from `/etc/ppp/chatscripts/pin`, e.g.

```sh
ln -sf pin.code /etc/ppp/chatscripts/pin
```

## Mode configuration

Create a `/etc/ppp/chatscripts/mode.X` file with the needed mode, e.g. use `mode.3G-only` like

```
AT\^SYSCFG=14,2,3fffffff,0,1
```

Then create a symlink to that from `/etc/ppp/chatscripts/mode`, e.g.

```sh
ln -sf mode.3G-only /etc/ppp/chatscripts/mode
```


# Packaging

This section describes how the `sn-pi-mobile-shield-quectel` package is created.

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

To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster
```

[fpm]: https://github.com/jordansissel/fpm
