# SolarNode Bluetooth Setup Debian package

This directory contains packaging scripts used to enable SolarNode Bluetooth Setup support.

# Services

This package enables a systemd `solarnode-bt-setup-peripheral.service` service.

## Environment variables

| Variable                           | Default | Description                                                                                                                                                                                                |
| ---------------------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `SN_BT_SETUP_PERIPHERAL_LOG_LEVEL` | `INFO`  | The log level. An enum value of `NOTSET`, `DEBUG`, `INFO`, `WARNING`, `ERROR`, `CRITICAL`. See the [Python documentation](https://docs.python.org/3/library/logging.html#logging-levels) for more details. |
| `SN_BT_SETUP_PERIPHERAL_ADAPTER`   | _n/a_   | The _name_ of the Bluetooth adapter to use (not the full D-Bus path). Falls through to the first adapter that advertises `org.bluez.GattManager1`. The value will look like `hciN`, such as `hci0`.        |

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
