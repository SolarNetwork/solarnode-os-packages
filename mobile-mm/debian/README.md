# SolarNode Mobile (Modem Manager) package

This directory contains packaging scripts used to create the `sn-mobile-mm` Debian package, which
provides configuration and support for mobile networking via the ModemManager package.

# Services

The `sn-mobile-mm-init` service initializes the modem once during system boot. The
`sn-mobile-mm-init.path` unit watches for the `/dev/modem` link to get created so start
`sn-mobile-mm-init.service` (in case the device is added later).

# Network configuration

The package will install an `/etc/systemd/network/30-wwan.network` file if one does not already
exist, **and** the `CFG_WITHOUT_NETWORK` configuration is not set (see next section). To disable
this behavior set this configuration to `1` **before installing this package**, for example:

```sh
echo 'CFG_WITHOUT_NETWORK=1' |sudo tee -a /etc/default/sn-mobile-mm
```

# Configuration

The `/etc/default/sn-mobild-mm` file can be used to configure aspects of this package. The default
values are in the `/usr/share/solarnode/default/mobile-mm-init-default` file.

| Configuration | Description |
|:--------------|:------------|
| `CFG_WITHOUT_NETWORK` | Disable creating the `30-wwan.network` file on package installation. |
| `AT_INIT_FILE` | Path to a file of `AT` modem commands to configure the modem with when the `sn-mobile-mm-init` service runs. Defaults to `/usr/share/solarnode/example/mobile-mm-init-default`  (see next section). |

## Modem init

The `AT_INIT_FILE` configuration file is where you can configure the mobile APN and any other setting. The default commands are:

```
AT+USBNETIP=0
AT+CGDCONT=1,"IP","internet"
```

To use custom settings, create a file with the desired commands and then configure the
`/etc/default/sn-mobile-mm` file with an `AT_INIT_FILE` with the path to that file. For example:

```sh
# copy default commands to new file
sudo cp /usr/share/solarnode/example/mobile-mm-init-default /usr/local/etc/sn-mobile-mm-init

# edit custom commands as needed...
sudo nano /usr/local/etc/sn-mobile-mm-init

# configure custom settings
echo 'AT_INIT_FILE=/usr/local/etc/sn-mobile-mm-init' |sudo tee -a /etc/default/sn-mobile-mm

# manually run init (or else reboot)
sudo systemctl start sn-mobile-mm-init
```


# Packaging

This section describes how the `sn-pi-mobile-shield-usb` package is created.

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
