# SolarNode Bluetooth Setup Debian package

This directory contains packaging scripts used to enable SolarNode Bluetooth Setup support.

# Services

This package provides a systemd `solarnode-bt-setup-peripheral` service, along with a
`solarnode-bt-setup-peripheral-restart.path` unit and the
`solarnode-bt-setup-peripheral-restart` service it triggers.

The peripheral advertises itself as `SolarNode X`, where `X` is the `nodeId` from
`/etc/solarnode/identity.json`. The `SolarNode` label comes from `CFG_SOLARNODE_LABEL` in
`/etc/default/sn-system`, so the advertised name matches the pretty hostname that
`identity-configure.sh` sets from the same value.

## Environment variables

| Variable                           | Default | Description                                                                                                                                                                                                |
| ---------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `SN_BT_SETUP_PERIPHERAL_LOG_LEVEL` | `INFO`  | The log level. An enum value of `NOTSET`, `DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`. See the [Python documentation](https://docs.python.org/3/library/logging.html#logging-levels) for more details. |
| `SN_BT_SETUP_PERIPHERAL_ADAPTER`   | _n/a_   | The _name_ of the Bluetooth adapter to use (not the full D-Bus path). Falls through to the first adapter that advertises `org.bluez.GattManager1`. The value will look like `hciN`, such as `hci0`.        |

These environment variables can be defined in `/etc/solarnode/bluetooth-setup.env`.
See this [example](./usr/share/solarnode/example/bluetooth-setup.env) for reference.
After creating or changing the variables file, restart the service with

```sh
sudo systemctl restart solarnode-bt-setup-peripheral
```

# Radio availability

The Bluetooth radio is on by default: the peripheral is enabled and started at
install. The `net.solarnetwork.node.setup.bluetooth` SolarNode plugin, from the
`solarnode-app-setup-bluetooth` package, can gate it so the radio is only on:

- while its availability schedule applies, such as `Mon-Fri 07:00-18:00`
- while the `bt-setup` operational mode is active, enabled from SolarNetwork
  with an `EnableOperationalModes` instruction or over Bluetooth by the mobile
  app
- after the node has been unable to reach SolarNetwork for a set time

The plugin controls the radio with the `solarcfg bluetooth` helper
(`/usr/share/solarnode/cfg.d/bluetooth.sh`), which the `solar` user can run
through `sudo`:

| Action    | Effect                                                                                                                                   |
| --------- | ---------------------------------------------------------------------------------------------------------------------------------------- |
| `status`  | Prints `active`, `enabled`, `discoverable`, `powered` (`true`/`false`) and `adapter` as `key: value` lines. `enabled` is the boot state. |
| `enable`  | Enables and starts the peripheral service. The peripheral powers the adapter and makes it discoverable and pairable.                     |
| `disable` | Stops and disables the peripheral service, then turns the adapter off (not discoverable, not pairable, not powered).                     |
| `restart` | Restarts the peripheral service if it is running. It never starts a stopped peripheral.                                                  |

The helper picks the adapter the same way the peripheral does: the
`SN_BT_SETUP_PERIPHERAL_ADAPTER` value from `/etc/solarnode/bluetooth-setup.env`
if it looks like `hciN`, otherwise the first adapter that provides
`org.bluez.GattManager1`, otherwise `hci0`. The helper runs as root and
`/etc/solarnode` is writable by `solar`, so it reads just that one value from
the file instead of sourcing it.

`enable` and `disable` also set the peripheral's boot state, so a radio the
plugin turned off stays off through a reboot instead of advertising until
SolarNode starts. Package upgrades keep that state, and an identity change only
starts the peripheral if it is enabled. If the plugin is removed the radio stays
in whatever state it was last left in; run `sudo solarcfg bluetooth enable` to
turn it back on.

To have the peripheral disabled from install, for a node the plugin will gate
from the start, create `/etc/default/solarnode-bluetooth-setup` **before
installing the package** with:

```sh
CFG_BT_SETUP_GATED=1
```

# Setup user configuration

A default setup user account with username `setup` and password `setup` will be configured in
`/etc/solarnode/auto-settings.d/solarnode-bluetooth-setup.csv`, unless a
`/etc/default/solarnode-bluetooth-setup` file exists **before installing the package** with the
following:

```sh
CFG_WITHOUT_SETUP_USER=1
```

This file can be updated as needed to change the username and/or password.

# Packaging

This section describes how the `solarnode-bluetooth-setup` package is created.

## Packaging requirements

Packaging done via [fpm][fpm] and `make`. To install `fpm`:

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
