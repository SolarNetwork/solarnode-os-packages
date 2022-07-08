# SolarNode Application - Modbus I/O - j2mod jSerialComm change log

This document details the history of changes of the `solarnode-app-io-modbus-j2mod-jsc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2022-07-08

This release requires [`solarnode-app-io-modbus` 2.0][io-mdobus-200] or newer.

The complete list of plugins included is:

| Name                                 | ID                      | Vers  |
|:-------------------------------------|:------------------------|:------|
| Modbus Communication Support (j2mod) | `n.s.n.io.modbus.j2mod` | 1.0.0 |


[io-modbus-200]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md#200---2021-10-17
