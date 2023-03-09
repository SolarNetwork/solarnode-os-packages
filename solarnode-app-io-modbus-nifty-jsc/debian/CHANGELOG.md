# SolarNode Application - Modbus I/O - Nifty Modbus - jSerialComm change log

This document details the history of changes of the `solarnode-app-io-modbus-nifty-jsc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 2.0.0 - 2023-03-08

This release requires [`solarnode-app-io-modbus` 3.0][io-mdobus-log] or newer.

The complete list of plugins included is:

| Name                                                     | ID                          | Vers  |
|:---------------------------------------------------------|:----------------------------|:------|
| Modbus Communication Support (Nifty Modbus)              | `n.s.n.io.modbus.nifty`     | 2.0.0 |
| Modbus Communication Support - Serial (Nifty Modbus JSC) | `n.s.n.io.modbus.nifty.jsc` | 2.0.0 |


## 1.0.0 - 2022-12-21

This release requires [`solarnode-app-io-modbus` 2.2][io-mdobus-log] or newer.

The complete list of plugins included is:

| Name                                                     | ID                          | Vers  |
|:---------------------------------------------------------|:----------------------------|:------|
| Modbus Communication Support (Nifty Modbus)              | `n.s.n.io.modbus.nifty`     | 1.0.0 |
| Modbus Communication Support - Serial (Nifty Modbus JSC) | `n.s.n.io.modbus.nifty.jsc` | 1.0.0 |

[io-modbus-log]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md
