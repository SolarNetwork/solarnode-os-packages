# SolarNode Application - M-Bus I/O - RXTX change log

This document details the history of changes of the `solarnode-app-io-modbus-jamod-jrxtx` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2024-02-05

This release requires [`solarnode-app-io-mbus` 1.0][io-mbus-log] or newer.

The complete list of plugins included is:

| Name                                | ID                    | Vers  |
|:------------------------------------|:----------------------|:------|
| M-Bus Communication Support (jMBus) | `n.s.n.io.mbus.jmbus` | 2.2.0 |


[io-mbus-log]: ../../solarnode-app-io-mbus/debian/CHANGELOG.md
