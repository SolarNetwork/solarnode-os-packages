# SolarNode Historian - Grafana

This package sets up [Grafana][grafana] on the node to chart the SolarNode datum history, using the
[SolarNetwork data source][datasource]. It adds SolarNode data sources and a starter dashboard.
Grafana comes from the repository that [sn-grafana-repo](../../grafana-repo/debian/) adds:

```sh
sudo apt install sn-grafana-repo
sudo apt update
sudo apt install sn-historian-grafana
```

# Security token

Grafana needs a SolarNode security token to read the history. Create one in SolarNode (**Settings >
Security Tokens**), then run this and enter the token's secret:

```sh
sn-historian-grafana-token set TOKEN_ID
```

It checks the token works. Later, `sn-historian-grafana-token check` checks it again, and
`sn-historian-grafana-token clear` removes it.

> :warning: **Note** that a SolarNode security token has full access to the node, including sending
> instructions.

# Using Grafana

Grafana only listens on the node itself. Reach it with an SSH tunnel:

```sh
ssh -L3333:localhost:3000 solar@NODE
```

Then open <http://localhost:3333> and log in as `admin`. The password is in
`/etc/sn-historian-grafana/admin-password`.

To reach Grafana from the local network instead, set `GF_SERVER_HTTP_ADDR=0.0.0.0` in
`/etc/default/sn-historian-grafana`, restart Grafana, and open port 3000 in the firewall.

# Removing

Removing the package stops Grafana, but leaves it installed with its data. It prints the commands
to clean up the rest.

# Building

Run `make` to build the package. It needs [fpm][fpm].

[datasource]: https://github.com/SolarNetwork/solarnetwork-grafana-datasource
[fpm]: https://github.com/jordansissel/fpm
[grafana]: https://grafana.com/oss/grafana/

