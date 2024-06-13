# SolarNode Application - Modbus IO - Server - change log

This document details the history of changes of the `solarnode-app-io-modbus-server` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2024-06-12

This release requires [`solarnode-app-core` 3.5][app-core-log] or newer.

The complete list of plugins included is:

| Name                | ID                       | Vers  |
|:--------------------|:-------------------------|:------|
| Modbus Server (TCP) | `n.s.n.io.modbus.server` | 4.0.1 |


[app-core-log]: ../../solarnode-app-core/debian/CHANGELOG.md
