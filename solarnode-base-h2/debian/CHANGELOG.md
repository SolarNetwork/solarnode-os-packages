# SolarNode Platform - DB - H2 change log

This document details the history of changes of the `solarnode-base-h2` package, from newest to
oldest.

## 1.1.0 - 2022-06-18

 * Requires [`solarnode-base`](../../solarnode-base/debian) **4.3** or higher

The complete list of plugins included is:

| Name               | ID               | Vers    |
|:-------------------|:-----------------|:--------|
| H2 Database Engine | `com.h2database` | 2.2.224 |


## 1.0.1 - 2022-06-18

The plugins have not changed in this release. Some additional scripts are included to help with
the transition to the next major version of H2 where the database format changes and must be
exported/imported to upgrade.

> :warning: This version _must_ be installed before the next version, to preserve any existing
> H2 database. If this version is skipped, the H2 database (and its backup) must be manually
> removed and then a backup of any settings restored in SolarNode.


## 1.0.0 - 2022-04-13

 * Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher

The complete list of plugins included is:

| Name               | ID               | Vers    |
|:-------------------|:-----------------|:--------|
| H2 Database Engine | `com.h2database` | 2.1.210 |

