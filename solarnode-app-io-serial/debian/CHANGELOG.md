# SolarNode Application - PureJavaComm I/O - change log

This document details the history of changes of the `solarnode-app-io-pjc` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 3.1.0 - 2024-07-08

This release requires [`solarnode-app-core` 3.26][app-core-log] or newer.

The complete list of plugins included is:

| Name                             | ID                | Vers  |
|:---------------------------------|:------------------|:------|
| Serial Communication Support API | `n.s.n.io.serial` | 4.1.0 |

## 3.0.0 - 2023-03-08

This release requires [`solarnode-app-core` 3.0][app-core-log] or newer.

The complete list of plugins included is:

| Name                             | ID                | Vers  |
|:---------------------------------|:------------------|:------|
| Serial Communication Support API | `n.s.n.io.serial` | 4.0.0 |


## 2.0.0 - 2021-10-18

This release requires [`solarnode-app-core` 2.0][app-core-log] or newer.

The complete list of plugins included is:

| Name                             | ID                | Vers  |
|:---------------------------------|:------------------|:------|
| Serial Communication Support API | `n.s.n.io.serial` | 3.0.0 |


## 1.0.2 - 2021-05-21

This release requires [`solarnode-app-core` 1.17][app-core-1170] or newer.

The complete list of plugins included is:

| Name                             | ID                | Vers  |
|:---------------------------------|:------------------|:------|
| Serial Communication Support API | `n.s.n.io.serial` | 2.2.0 |


[app-core-1170]: ../../solarnode-app-core/debian/CHANGELOG.md#1170---2021-05-17
[app-core-log]: ../../solarnode-app-core/debian/CHANGELOG.md
