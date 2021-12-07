# SolarNode Application - STOMP Setup - change log

This document details the history of changes of the `solarnode-app-stomp-setup` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 2.0.1 - 2021-12-08

This release requires [`solarnode-app-core` 2.2][app-core-220] or newer.

The complete list of plugins included is:

| Name            | ID                  | Vers  |
|:----------------|:--------------------|:------|
| Setup via STOMP | `n.s.n.setup.stomp` | 2.0.1 |


[app-core-220]: ../../solarnode-app-core/debian/CHANGELOG.md#220---2021-12-08
