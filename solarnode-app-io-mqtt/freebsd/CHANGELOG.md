# SolarNode Application - MQTT IO - change log

This document details the history of changes of the `solarnode-app-io-mqtt` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2021-05-21

This release requires [`solarnode-app-core` 1.18][app-core-1180] or newer.

The complete list of plugins included is:

| Name                             | ID                | Vers  |
|:---------------------------------|:------------------|:------|
| SolarNetwork Common MQTT Support | `n.s.common.mqtt` | 2.3.1 |

[app-core-1180]: ../../solarnode-app-core/debian/CHANGELOG.md#1180---2021-05-28
