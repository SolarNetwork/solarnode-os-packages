# SolarNode Platform - Jamod - PJC change log

This document details the history of changes of the `solarnode-base-jamod-pjc` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2024-02-05

 * Requires [`solarnode-base`](../../solarnode-base/debian) **2.0** or higher

The complete list of plugins included is:

| Name                      | ID                       | Vers  |
|:--------------------------|:-------------------------|:------|
| Java Modbus Library (PJC) | `n.s.external.jamod.pjc` | 1.2.0 |
