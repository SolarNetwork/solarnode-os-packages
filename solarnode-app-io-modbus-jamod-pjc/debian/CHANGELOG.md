# SolarNode Application - Modbus I/O - RXTX change log

This document details the history of changes of the `solarnode-app-io-modbus-jamod-rxtx` package,
from newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 2.0.1 - 2022-10-28

This release requires [`solarnode-app-io-modbus` 2.0][io-mdobus-200] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 2.0.1 |


## 2.0.0 - 2021-09-21

This release requires [`solarnode-app-io-modbus` 2.0][io-mdobus-200] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 2.0.0 |


## 1.2.1 - 2021-08-31

This release requires [`solarnode-app-io-modbus` 1.4][io-mdobus-140] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 1.2.2 |


## 1.2.0 - 2021-07-03

This release requires [`solarnode-app-io-modbus` 1.1][io-mdobus-110] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 1.2.1 |


## 1.1.0 - 2021-06-21

This release requires [`solarnode-app-io-modbus` 1.0][io-mdobus-100] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 1.2.0 |


## 1.0.0 - 2021-05-21

This release requires [`solarnode-app-io-modbus` 1.0][io-mdobus-100] or newer.

The complete list of plugins included is:

| Name                                 | ID                       | Vers  |
|:-------------------------------------|:-------------------------|:------|
| Java Modbus Library (PJC)            | `n.s.external.jamod.pjc` | 1.2.0 |
| Modbus Communication Support (Jamod) | `n.s.n.io.modbus.jamod`  | 1.1.0 |


[io-modbus-100]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md#100---2021-05-21
[io-modbus-110]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md#110---2021-07-03
[io-modbus-140]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md#140---2021-08-31
[io-modbus-200]: ../../solarnode-app-io-modbus/debian/CHANGELOG.md#200---TODO
