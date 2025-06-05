# SolarNode Heartbeat Log Debian package

This directory contains packaging scripts used to create a "heartbeat" log file for up-time auditing
purposes.

A `sn-heartbeat-log` systemd timer is configured to append the output of `date` to the
`/var/log/sn-heartbeat/sn-heartbeat.log` file, every 5 minutes.

A `/etc/logrotate.d/sn-heartbeat` logrotate configuration rotates the log file.

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-document fpm
```

## Create package

Use `fpm` to package the service via `make`. This package is architecture independent:

```sh
$ make
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster
```

[fpm]: https://github.com/jordansissel/fpm
[osstat]: https://github.com/SolarNetwork/solarnetwork-node/tree/master/net.solarnetwork.node.datum.os.stat
