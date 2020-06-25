# socketcand for SolarNode

## Building

Make sure `autoconf`, `automake`, `libtool`, `libconfig-dev`, and `make` are installed, e.g.

```sh
apt-get install autoconf automake libtool libconfig-dev build-essential
```

You also need the kernel headers installed. For example on a Raspberry Pi:

```
apt-get install raspbian-kernel-headers
```

Clone the git repository, check out the release tag, and build like this:

```sh
$ git clone https://github.com/linux-can/socketcand.git
$ cd socketcand
$ ./autogen.sh
$ ./configure --prefix=/usr
$ make && make install DESTDIR=local init_script=no
$ cd ..
```

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt-get install ruby ruby-dev build-essential
$ sudo gem install --no-ri --no-rdoc fpm
```

## Create package

Use `fpm` to package the service via `make`:

```sh
$ make
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster
```
