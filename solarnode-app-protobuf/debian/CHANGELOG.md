# SolarNode Application - Protobuf change log

This document details the history of changes of the `solarnode-app-protobuf` package, from newest to
oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 1.0.0 - 2019-08-26

 * Requires [`solarnode-base`](../../solarnode-base/debian) **1.2** or higher
 * Requires [`solarnode-app-core`](../../solarnode-app-core/debian) **1.0** or higher

The complete list of plugins included is:

| Name                    | ID                    | Vers  |
|:------------------------|:----------------------|:------|
| Protocol Buffers [Core] | `com.google.protobuf` | 3.7.1 |
