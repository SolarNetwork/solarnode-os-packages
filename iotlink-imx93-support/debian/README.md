# SolarNode IoT Link iMX93 support Debian package

This package provides support for Compulab IoT Link iMX93 devices.

# `solarstat` integration

This package installs a `/usr/share/solarnode/osstat.d/iotlink-imx93.sh` service script so the
[OS Statistics][osstat-ds] plugin can collect additional statistics about mobile connectivity.
The `solarstat` command is provided by the `sn-osstat` package.

| Statistic | Description |
|:----------|:------------|
| `mobile-signal-quality` | Generates `i/mobile_rssi` and `i/mobile_ber` values for the RSSI (signal quality) and BER (error rate) reported by the modem. |

## Example

```sh
$ solarstat mobile-signal-quality
i/mobile_rssi,i/mobile_ber
22,0
```

# Building

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
[osstat-ds]: https://solarnetwork.github.io/solarnode-handbook/users/datum-sources/os-stats/
