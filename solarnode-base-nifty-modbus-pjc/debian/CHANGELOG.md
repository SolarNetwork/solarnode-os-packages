# SolarNode Platform - Nifty Modbus (PureJavaComm) change log

This document details the history of changes of the `solarnode-base-nifty-modbus-pjc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 0.8.0 - 2024-03-22

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                   | ID                             | Vers  |
|:---------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core               | `n.s.common.io.modbus.core`    | 0.8.0 |
| SolarNetwork Modbus RTU (Core)         | `n.s.common.io.modbus.rtu`     | 0.8.0 |
| SolarNetwork Modbus RTU (PureJavaComm) | `n.s.common.io.modbus.rtu.pjc` | 0.8.0 |
| SolarNetwork Modbus TCP                | `n.s.common.io.modbus.tcp`     | 0.8.0 |


## 0.6.0 - 2023-12-20

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                   | ID                             | Vers  |
|:---------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core               | `n.s.common.io.modbus.core`    | 0.6.0 |
| SolarNetwork Modbus RTU (Core)         | `n.s.common.io.modbus.rtu`     | 0.6.0 |
| SolarNetwork Modbus RTU (PureJavaComm) | `n.s.common.io.modbus.rtu.pjc` | 0.6.0 |
| SolarNetwork Modbus TCP                | `n.s.common.io.modbus.tcp`     | 0.6.0 |


[base-changelog]: ../../solarnode-base/debian/CHANGELOG.md
