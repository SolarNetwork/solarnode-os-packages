# SolarNode Application - DB - H2 change log

This document details the history of changes of the `solarnode-app-protobuf` package, from newest to
oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2022-04-07

 * Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher
 * Requires [`solarnode-app-core`](../../solarnode-app-core/debian) **2.0** or higher

The complete list of plugins included is:

| Name               | ID               | Vers    |
|:-------------------|:-----------------|:--------|
| H2 Database Engine | `com.h2database` | 2.1.210 |

