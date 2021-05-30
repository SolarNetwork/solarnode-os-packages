# SolarNode Application - MQTT I/O - Netty change log

This document details the history of changes of the `solarnode-app-io-mqtt-netty` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.1 - 2021-05-30

This release requires [`solarnode-app-io-mqtt` 1.0.1][io-mqtt-100] or newer.

The complete list of plugins included is:

| Name                | ID                      | Vers  |
|:--------------------|:------------------------|:------|
| MQTT client - Netty | `n.s.common.mqtt.netty` | 1.2.5 |


## 1.0.0 - 2021-05-28

This release requires [`solarnode-app-io-mqtt` 1.0][io-mqtt-100] or newer.

The complete list of plugins included is:

| Name                | ID                      | Vers  |
|:--------------------|:------------------------|:------|
| MQTT client - Netty | `n.s.common.mqtt.netty` | 1.2.3 |


[io-mqtt-100]: ../../solarnode-app-io-mqtt/debian/CHANGELOG.md#100---2021-05-28
[io-mqtt-101]: ../../solarnode-app-io-mqtt/debian/CHANGELOG.md#101---2021-05-30
