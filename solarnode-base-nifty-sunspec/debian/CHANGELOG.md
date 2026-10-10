# SolarNode Platform - Nifty SunSpec change log

This document details the history of changes of the `solarnode-base-nifty-sunspec` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |


## 0.1.0 - 2026-10-10

This release requires [`solarnode-base` 1.13][base-changelog] or newer.

The complete list of plugins included is:

| Name                      | ID                 | Vers  |
|:--------------------------|:-------------------|:------|
| SolarNetwork SunSpec API  | `n.s.sunspec.api`  | 0.1.0 |
| SolarNetwork SunSpec Core | `n.s.sunspec.core` | 0.1.0 |

[base-changelog]: ../../solarnode-base/debian/CHANGELOG.md
