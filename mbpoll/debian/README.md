# mbpoll for SolarNode

## Building

Make sure `cmake`, `make`, and `pkg-config` are installed, e.g.

```sh
apt install cmake pkg-config make build-essential git libmodbus-dev
```

Clone the git repository, check out the release tag, and build like this:

```sh
$ git clone https://github.com/epsilonrt/mbpoll
$ cd mbpoll
$ git checkout v1.4.11
$ mkdir -p build/native
$ cd build/native
$ cmake -DCMAKE_INSTALL_PREFIX:PATH=/usr ../..
$ make && make install DESTDIR=$PWD/local
$ cd ../../..
$ make
```

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt install ruby ruby-dev build-essential

# For Ruby < 2.6
$ sudo gem install --no-ri --no-rdoc fpm

# For Ruby 2.6+
$ sudo gem install --no-document fpm
```
To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster
```
