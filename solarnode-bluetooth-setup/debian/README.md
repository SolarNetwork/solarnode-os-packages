# SolarNode Bluetooth Setup Debian package

This directory contains packaging scripts used to enable SolarNode Bluetooth
Setup support.

# Services

This package provides a systemd `solarnode-bt-setup-peripheral` service, along
with a `solarnode-bt-setup-peripheral-restart.path` unit and the
`solarnode-bt-setup-peripheral-restart` service it triggers.

# Radio availability

The Bluetooth radio is on by default: the peripheral is enabled and started at
install. The `net.solarnetwork.node.setup.bluetooth` SolarNode plugin (the
`solarnode-app-setup-bluetooth` package) can gate it instead, turning the radio
on only:

- while its configured availability schedule applies, such as
  `Mon-Fri 07:00-18:00`,
- while a `bt-setup` operational mode is active as an override (enabled from
  SolarNetwork with the `EnableOperationalModes` instruction and an expiration,
  or over Bluetooth by the mobile app), or
- while the node has been unable to reach SolarNetwork for a configurable time.

The plugin drives the radio through the `solarcfg bluetooth` helper, installed
as `/usr/share/solarnode/cfg.d/bluetooth.sh` with a matching `sudoers` entry for
the `solar` user:

| Action    | Effect                                                                                                                                                          |
| --------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `status`  | Prints `active`, `enabled`, `discoverable`, `powered` (`true`/`false`) and `adapter` as `key: value` lines. `enabled` is whether the peripheral starts at boot. |
| `enable`  | Enables and starts the peripheral service. The peripheral powers the adapter and makes it discoverable and pairable itself.                                     |
| `disable` | Stops and disables the peripheral service and turns the adapter off (not discoverable, not pairable, not powered).                                              |
| `restart` | Restarts the peripheral service if it is running. It never starts a stopped peripheral.                                                                         |

The helper selects the adapter the same way the peripheral does: the
`SN_BT_SETUP_PERIPHERAL_ADAPTER` value from `/etc/solarnode/bluetooth-setup.env`
if it is set and looks like `hciN`, otherwise the first adapter that provides
`org.bluez.GattManager1`, otherwise `hci0`. Because the helper runs as root and
`/etc/solarnode` is writable by the `solar` user, the helper parses that file
for the one value rather than sourcing it, and ignores any value that is not an
adapter name.

`enable` and `disable` record the decision as the peripheral's boot state, so a
radio the plugin turned off does not advertise at the next boot before SolarNode
starts. A package upgrade keeps that recorded state, and the identity-change
restart only starts a peripheral whose boot state is enabled. Removing the
plugin leaves the radio in its last state; run `sudo solarcfg bluetooth enable`
to restore it.

To leave the peripheral disabled and stopped at install, for a node the plugin
will gate from the start, create `/etc/default/solarnode-bluetooth-setup`
**before installing the package** with:

```sh
CFG_BT_SETUP_GATED=1
```

## Environment variables

| Variable                           | Default | Description                                                                                                                                                                                                |
| ---------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `SN_BT_SETUP_PERIPHERAL_LOG_LEVEL` | `INFO`  | The log level. An enum value of `NOTSET`, `DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`. See the [Python documentation](https://docs.python.org/3/library/logging.html#logging-levels) for more details. |
| `SN_BT_SETUP_PERIPHERAL_ADAPTER`   | _n/a_   | The _name_ of the Bluetooth adapter to use (not the full D-Bus path). Falls through to the first adapter that advertises `org.bluez.GattManager1`. The value will look like `hciN`, such as `hci0`.        |

These environment variables can be defined in
`/etc/solarnode/bluetooth-setup.env`. See this
[example](./usr/share/solarnode/example/bluetooth-setup.env) for reference.
After creating or changing the variables file, restart the service with

```sh
sudo systemctl restart solarnode-bt-setup-peripheral
```

# Setup user configuration

A default setup user account with username `setup` and password `setup` will be
configured in `/etc/solarnode/auto-settings.d/solarnode-bluetooth-setup.csv`,
unless a `/etc/default/solarnode-bluetooth-setup` file exists **before
installing the package** with the following:

```sh
CFG_WITHOUT_SETUP_USER=1
```

This file can be updated as needed to change the username and/or password.

# Packaging

This section describes how the `solarnode-bluetooth-setup` package is created.

## Packaging requirements

Packaging done via [fpm](https://github.com/jordansissel/fpm) and `make`. To
install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-document fpm
```

## Create package

Use `fpm` to package the service via `make`. This package is architecture
independent:

```sh
$ make
```
