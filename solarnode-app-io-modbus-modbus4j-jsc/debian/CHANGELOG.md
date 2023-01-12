# SolarNode Application - Modbus I/O - modbus4j - jSerialComm change log

This document details the history of changes of the `solarnode-app-io-modbus-modbus4j-jsc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2022-11-23

This release requires [`solarnode-app-io-modbus` 2.0][io-mdobus-log] or newer.

The complete list of plugins included is:

| Name                                                 | ID                             | Vers  |
|:-----------------------------------------------------|:-------------------------------|:------|
| Modbus Communication Support (modbus4j)              | `n.s.n.io.modbus.modbus4j`     | 1.0.0 |
| Modbus Communication Support - Serial (modbus4j JSC) | `n.s.n.io.modbus.modbus4j.jsc` | 1.0.0 |
| Modbus4j                                             | `n.s.external.modbus4j`        | 3.1.0 |

[io-modbus-log]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md
