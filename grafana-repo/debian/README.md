# Grafana Package Repository for SolarNode

This package lets Grafana and the [SolarNetwork data source][datasource] plugin be installed on
SolarNode. It adds the [Grafana package repository][grafana-apt], and adds the `solarnet` component
of the SolarNetwork package repository to `/etc/apt/sources.list.d/solarnetwork.list`:

```sh
sudo apt install sn-grafana-repo
sudo apt update
sudo apt install grafana solarnetwork-grafana-datasource
```

Grafana is pinned to version 12.x. To change that, edit the `Pin` line in
`/etc/apt/preferences.d/sn-grafana`.

> :warning: **Note** that the repository's signing key expires on 2027-08-22. When Grafana renews
> it, update `etc/apt/keyrings/grafana.asc` and `KEY_FPR` in the `Makefile`.

# Building

Run `make` to build the package. It needs [fpm][fpm], and `gpg` to check the key fingerprint.

[datasource]: https://github.com/SolarNetwork/solarnetwork-grafana-datasource
[fpm]: https://github.com/jordansissel/fpm
[grafana-apt]: https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/

