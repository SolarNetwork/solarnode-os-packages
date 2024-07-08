# SolarNode Application - M-Bus IO - change log

This document details the history of changes of the `solarnode-app-io-mbus` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.2.0 - 2024-07-08

This release requires [`solarnode-app-core` 3.26][app-core-log] or newer.

The complete list of plugins included is:

| Name                            | ID              | Vers  |
|:--------------------------------|:----------------|:------|
| M-Bus Communication Support API | `n.s.n.io.mbus` | 2.2.0 |


## 1.1.0 - 2024-06-06

The complete list of plugins included is:

| Name                            | ID              | Vers  |
|:--------------------------------|:----------------|:------|
| M-Bus Communication Support API | `n.s.n.io.mbus` | 2.1.0 |


## 1.0.0 - 2024-02-05

This release requires [`solarnode-app-core` 3.5][app-core-log] or newer.

The complete list of plugins included is:

| Name                            | ID              | Vers  |
|:--------------------------------|:----------------|:------|
| M-Bus Communication Support API | `n.s.n.io.mbus` | 2.0.0 |

[app-core-log]: ../../solarnode-app-core/debian/CHANGELOG.md
