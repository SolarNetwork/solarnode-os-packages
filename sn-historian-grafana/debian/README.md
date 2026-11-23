# SolarNode Historian - Grafana

This directory contains support for building the `sn-historian-grafana` package, which sets up
[Grafana][grafana] on the node to chart the SolarNode datum history, with the
[SolarNetwork data source][datasource]. Grafana reads the history through the node's SolarQuery
API, so the history can be in the node's Postgres database
([sn-historian-db-local](../../sn-historian-db-local/debian/)) or another one.

Grafana comes from the Grafana package repository, which
[sn-grafana-repo](../../grafana-repo/debian/) adds:

```sh
sudo apt install sn-grafana-repo
sudo apt update
sudo apt install sn-historian-grafana
```

# What it does

When installed, the package:

1. Adds two data sources, `SolarNode (filtered)` and `SolarNode (unfiltered)`, and a
   `SolarNode history` starter dashboard.
2. Adds Grafana settings, in a `grafana-server.service` drop-in: Grafana listens on
   `127.0.0.1:3000` only, uses a generated admin password, and doesn't contact grafana.com.
3. Enables and starts `grafana-server`. If the node isn't running (as when building a SolarNodeOS
   image), Grafana starts when it boots.

When Grafana starts, the drop-in creates `/etc/sn-historian-grafana/`, with empty `token` and
`secret` files for the data sources and a generated `admin-password`, if they are missing. So each
node gets its own admin password, even when installed in an image.

The generated admin password only applies to a new Grafana database. If Grafana was already set up
on the node, the install prints how to set it:

```sh
sudo cat /etc/sn-historian-grafana/admin-password \
  | sudo runuser -u grafana -- env -C / grafana cli admin reset-admin-password --password-from-stdin
```

# Security token

The data sources need a SolarNode security token. Create one in SolarNode (**Settings > Security
Tokens**), then save its ID and secret and restart Grafana:

```sh
echo -n 'TOKEN_ID' | sudo tee /etc/sn-historian-grafana/token >/dev/null
echo -n 'TOKEN_SECRET' | sudo tee /etc/sn-historian-grafana/secret >/dev/null
sudo systemctl restart grafana-server
```

> :warning: **Note** a SolarNode security token has full access to the node API, including sending
> instructions, so anyone who can edit Grafana data sources or queries could use it. The data
> sources can't be edited in Grafana.

# Using Grafana

Grafana listens on the node's loopback address only. Reach it with an SSH tunnel, for example:

```sh
ssh -L3333:localhost:3000 solar@NODE
```

then open <http://localhost:3333> and log in as `admin`, with the password from
`/etc/sn-historian-grafana/admin-password`.

The starter dashboard can't be changed in Grafana: use **Save as** to make a copy to change.

## Access from the local network

To let other devices reach Grafana directly:

1. Set `GF_SERVER_HTTP_ADDR=0.0.0.0` in `/etc/default/sn-historian-grafana`, then
   `sudo systemctl restart grafana-server`. Any other Grafana setting can be changed there too.
2. Open TCP port 3000 in the firewall, for example by adding this line to the end of
   `/etc/nftables.conf` and running `sudo systemctl restart nftables`:

   ```
   add rule ip filter snManaged ip saddr 192.168.0.0/16 tcp dport 3000 counter accept
   ```

The firewall only filters IPv4, so Grafana is then also reachable over IPv6.

# Removing

Removing the package stops and disables `grafana-server`, as without its settings Grafana would
listen on every address. Grafana, its database and the files in `/etc/sn-historian-grafana` stay.
The removal prints the commands to clean them up, and the security token stays in SolarNode until
you delete it there.

# Building

Packaging is done via `make` with [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

Then run `make`, which produces `sn-historian-grafana_VERSION_all.deb` in this directory.

[datasource]: https://github.com/SolarNetwork/solarnetwork-grafana-datasource
[fpm]: https://github.com/jordansissel/fpm
[grafana]: https://grafana.com/oss/grafana/
