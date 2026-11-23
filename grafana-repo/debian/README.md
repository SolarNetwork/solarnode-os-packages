# Grafana Package Repository for SolarNode

This package configures the [apt.grafana.com][grafana-apt] package repository to support
installing Grafana in SolarNode, for example with
[sn-historian-grafana](../../sn-historian-grafana/debian/):

```sh
sudo apt install sn-grafana-repo
sudo apt update
sudo apt install sn-historian-grafana
```

It adds:

| File                                   | Description                                                             |
|:---------------------------------------|:------------------------------------------------------------------------|
| `/etc/apt/keyrings/grafana.asc`        | The Grafana package signing key.                                        |
| `/etc/apt/sources.list.d/grafana.list` | The repository.                                                         |
| `/etc/apt/preferences.d/sn-grafana`    | Pins `grafana` to 12.x, and takes no other package from the repository. |

Removing the package removes all three. To move to another Grafana version, change the
`Pin: version` line in `/etc/apt/preferences.d/sn-grafana` (a new package version replaces it).

The signing key expires on 2027-08-22. When Grafana extends or replaces it, update
`etc/apt/keyrings/grafana.asc` from <https://apt.grafana.com/gpg.key> and `KEY_FPR` in the
`Makefile`, and publish a new package version.

# Building

Packaging is done via `make` with [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

Then run `make`, which checks the key fingerprint (with `gpg`) and produces
`sn-grafana-repo_VERSION_all.deb` in this directory.

[fpm]: https://github.com/jordansissel/fpm
[grafana-apt]: https://grafana.com/docs/grafana/latest/setup-grafana/installation/debian/

