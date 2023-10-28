# SolarNode Platform - Nifty Modbus (jSerialComm) change log

This document details the history of changes of the `solarnode-base-nifty-modbus-jsc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 0.5.0 - 2023-10-29

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                  | ID                             | Vers  |
|:--------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core              | `n.s.common.io.modbus.core`    | 0.5.0 |
| SolarNetwork Modbus RTU (Core)        | `n.s.common.io.modbus.rtu`     | 0.5.0 |
| SolarNetwork Modbus RTU (jSerialComm) | `n.s.common.io.modbus.rtu.jsc` | 0.5.0 |
| SolarNetwork Modbus TCP               | `n.s.common.io.modbus.tcp`     | 0.5.0 |


## 0.4.0 - 2023-09-14

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                  | ID                             | Vers  |
|:--------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core              | `n.s.common.io.modbus.core`    | 0.4.0 |
| SolarNetwork Modbus RTU (Core)        | `n.s.common.io.modbus.rtu`     | 0.4.0 |
| SolarNetwork Modbus RTU (jSerialComm) | `n.s.common.io.modbus.rtu.jsc` | 0.4.0 |
| SolarNetwork Modbus TCP               | `n.s.common.io.modbus.tcp`     | 0.4.0 |


## 0.2.0 - 2023-03-22

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                  | ID                             | Vers  |
|:--------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core              | `n.s.common.io.modbus.core`    | 0.2.0 |
| SolarNetwork Modbus RTU (Core)        | `n.s.common.io.modbus.rtu`     | 0.2.0 |
| SolarNetwork Modbus RTU (jSerialComm) | `n.s.common.io.modbus.rtu.jsc` | 0.2.0 |
| SolarNetwork Modbus TCP               | `n.s.common.io.modbus.tcp`     | 0.2.0 |


## 0.1.0 - 2022-12-21

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                                  | ID                             | Vers  |
|:--------------------------------------|:-------------------------------|:------|
| SolarNetwork Modbus Core              | `n.s.common.io.modbus.core`    | 0.1.0 |
| SolarNetwork Modbus RTU (Core)        | `n.s.common.io.modbus.rtu`     | 0.1.0 |
| SolarNetwork Modbus RTU (jSerialComm) | `n.s.common.io.modbus.rtu.jsc` | 0.1.0 |
| SolarNetwork Modbus TCP               | `n.s.common.io.modbus.tcp`     | 0.1.0 |

[base-changelog]: ../../solarnode-base/debian/CHANGELOG.md
