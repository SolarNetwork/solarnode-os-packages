# libmodbus for SolarNode

## Building

Make sure built tools are installed, e.g.

```sh
apt install build-essential linux-headers-$(uname -r)
```

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential

# For Ruby < 2.6
$ sudo gem install --no-ri --no-rdoc fpm

# For Ruby 2.6+
$ sudo gem install --no-document fpm
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
make DIST=buster
```
