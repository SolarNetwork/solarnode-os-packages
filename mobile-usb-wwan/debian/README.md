# SolarNode Mobile (USB wwan) package

This directory contains packaging scripts used to create the `sn-mobile-usb-wwan` Debian package,
which provides configuration and support for mobile networking using USB modems and the `wwan`
network device type.

# Services

The `sn-mobile-usb-wwan-validate` service runs from a timer, to periodically check that the internet
is reachable. Although the service is configured to run when you install this package, it must
be enabled to actually perform the check, see [below](#network-ping-configuration).

# Network configuration

The package will install an `/etc/systemd/network/30-wwan.network` file if one does not already
exist, **and** the `CFG_WITHOUT_NETWORK` configuration is not set (see next section). To disable
this behavior set this configuration to `1` **before installing this package**, for example:

```sh
echo 'CFG_WITHOUT_NETWORK=1' |sudo tee -a /etc/default/sn-mobile-usb-wwan
```

# Configuration

The `/etc/default/sn-mobile-usb-wwan` file can be used to configure aspects of this package. The default
values are in the `/usr/share/solarnode/default/sn-mobile-usb-wwan` file.

| Configuration | Description |
|:--------------|:------------|
| `AT_INIT_FILE` | Path to a file of `AT` modem commands to configure the modem with when the `sn-mobile-usb-wwan-init` service runs. Defaults to `/usr/share/solarnode/example/mobile-usb-wwan-init-default`  (see next section). |
| `AUTO_RECONNECT_ENABLE` | Set to `1` to enable the [ping reconnect](#network-ping-configuration) task. |
| `CFG_WITHOUT_NETWORK` | Disable creating the `30-wwan.network` file on package installation. |
| `MOBILE_APN` | The APN used to configure the modem network connection. Defaults to `internet`. |
| `MOBILE_RESET_HOOK` | An optional script to run when `solarcfg mobile reset` is run. |
| `NET_INTERFACE` | The interface to use in the ping reconnect task; defaults to `wwan0`. |
| `PING_HOST` | The host to ping in the ping reconnect task; defaults to `1.1.1.1`. |

## Modem init

The `AT_INIT_FILE` configuration file is where you can configure the mobile APN and any other
setting. The default commands are:

```
AT+USBNETIP=0
AT+CGDCONT=1,"IP","$MOBILE_APN"
```

To use custom settings, create a file with the desired commands and then configure the
`/etc/default/sn-mobile-usb-wwan` file with an `AT_INIT_FILE` with the path to that file. For example:

```sh
# copy default commands to new file
sudo cp /usr/share/solarnode/example/mobile-usb-wwan-init-default /usr/local/etc/sn-mobile-usb-wwan-init

# edit custom commands as needed...
sudo nano /usr/local/etc/sn-mobile-usb-wwan-init

# configure custom settings
echo 'AT_INIT_FILE=/usr/local/etc/sn-mobile-usb-wwan-init' |sudo tee -a /etc/default/sn-mobile-usb-wwan

# manually run configure to apply the settings
sudo /usr/share/solarnode/cfg.d/mobile.sh configure
```

This `configure` command typically need only be run once, as the modem will save the settings to
its non-volatile memory.

## Network ping configuration

The `sn-mobile-usb-wwan-validate` timer runs periodically to test that the network is reachable. The
`/etc/default/sn-mobile-usb-wwan` file can be used to configure various parameters; see the table
in the previous section. The following settings affect the ping task:

```
# Enable the auto-reconnect task
AUTO_RECONNECT_ENABLE=1

# The network interface to test for
NET_INTERFACE="wwan0"

# The host or IP address to ping
PING_HOST="1.1.1.1"
```

# `solarcfg` integration

This package installs a `/usr/share/solarnode/cfg.d/mobile.sh` service script so the mobile
connection can be managed via the `solarcfg` helper (provided by the `sn-system` package):

```sh
# configure modem
sudo ~solar/bin/solarcfg mobile configure

# report connection status
sudo ~solar/bin/solarcfg mobile status

# reset the connection (disable then enable the modem)
sudo ~solar/bin/solarcfg mobile reset

# restart the ModemManager service
sudo ~solar/bin/solarcfg mobile restart
```

This is used by the SolarNode `net.solarnetwork.node.setup.mobile` plugin, which exposes the same
actions to the SolarNode UI and to remote clients (such as the mobile app) via a `SystemConfigure`
instruction with a `service` parameter of `/setup/network/mobile`.


# Packaging

This section describes how the `sn-pi-mobile-usb-wwan` package is created.

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
