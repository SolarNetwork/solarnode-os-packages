# iptables Debian package

This directory contains packaging scripts used to create an iptables based firewall service 
`sn-iptables.deb`. It integrates a SSH [brute force][dropBrute] response script.


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
[dropBrute]: https://github.com/robzr/dropBrute