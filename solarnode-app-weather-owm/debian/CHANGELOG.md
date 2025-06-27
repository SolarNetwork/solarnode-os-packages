# SolarNode Application - Weather - OpenWeatherMap - change log

This document details the history of changes of the `solarnode-app-weather-owm` package, from
newest to oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 2.0.0 - 2025-06-24

This release requires [`solarnode-app-core` 4.0][app-core-log] or newer.

The complete list of plugins included is:

| Name                   | ID                        | Vers  |
|:-----------------------|:--------------------------|:------|
| OpenWeatherMap Weather | `n.s.n.datum.weather.owm` | 4.0.0 |


## 1.0.0 - 2025-06-05

This release requires [`solarnode-app-core` 3.44][app-core-log] or newer.

The complete list of plugins included is:

| Name                   | ID                        | Vers  |
|:-----------------------|:--------------------------|:------|
| OpenWeatherMap Weather | `n.s.n.datum.weather.owm` | 3.0.2 |


[app-core-log]: ../../solarnode-app-core/debian/CHANGELOG.md
