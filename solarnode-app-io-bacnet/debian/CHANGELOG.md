# SolarNode Application - BACnet IO - change log

This document details the history of changes of the `solarnode-app-io-bacnet` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.1.0 - 2023-06-28

This release requires [`solarnode-app-core` 2.10][app-core-log] or newer.

The complete list of plugins included is:

| Name                     | ID                | Vers  |
|:-------------------------|:------------------|:------|
| BACnet Communication API | `n.s.n.io.bacnet` | 1.1.0 |

## 1.0.0 - 2022-11-12

This release requires [`solarnode-app-core` 2.10][app-core-log] or newer.

The complete list of plugins included is:

| Name                     | ID                | Vers  |
|:-------------------------|:------------------|:------|
| BACnet Communication API | `n.s.n.io.bacnet` | 1.0.0 |


[app-core-log]: ../../solarnode-app-core/debian/CHANGELOG.md
