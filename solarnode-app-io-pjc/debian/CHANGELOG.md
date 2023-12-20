# SolarNode Application - I/O - PureJavaComm change log

This document details the history of changes of the `solarnode-app-io-pjc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.1.0 - 2023-12-20

This is a transitional package that depends on the new `solarnode-base-purejavacomm` package to
provide the PureJavaComm plugin.

## 1.0.2 - 2021-05-21

This release requires [`solarnode-app-core` 1.17][app-core-1170] or newer.

The complete list of plugins included is:

| Name         | ID                 | Vers  |
|:-------------|:-------------------|:------|
| PureJavaComm | `n.s.external.pjc` | 1.0.2 |


[app-core-1170]: ../../solarnode-app-core/debian/CHANGELOG.md#1170---2021-05-17
