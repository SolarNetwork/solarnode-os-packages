# Grafana Package Repository for SolarNode

This package adds the [Grafana package repository][grafana-apt], so Grafana can be installed on
SolarNode:

```sh
sudo apt install sn-grafana-repo
sudo apt update
sudo apt install grafana
```

Grafana is pinned to version 12.x. To change that, edit the `Pin` line in
`/etc/apt/preferences.d/sn-grafana`.

> :warning: **Note** that the repository's signing key expires on 2027-08-22. When Grafana renews
> it, update `etc/apt/keyrings/grafana.asc` and `KEY_FPR` in the `Makefile`.

# Building

Run `make` to build the package. It needs [fpm][fpm], and `gpg` to check the key fingerprint.

[fpm]: https://github.com/jordansissel/fpm
[grafana-apt]: https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/

