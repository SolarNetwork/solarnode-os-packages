# yasdi for SolarNode

## Building

Make sure `cmake`, `make`, and `pkg-config` are installed, e.g.

```sh
apt-get install cmake make build-essential git
```

```sh
git clone https://github.com/SolarNetwork/yasdi.git
cd yasdi/projects/generic-cmake
mkdir -p build/native
cd build/native
cmake ../.. -DCMAKE_INSTALL_PREFIX:PATH=/usr
make && make DESTDIR=$PWD/local install

cd ../../../../..
```

### Building on Debian 10

Building on Debian 10 in a virtual environment can fail, but the newer `cmake` in backports fixes
the issue. Install `cmake` from backports like this:

```sh
# import old debian keys
apt-key adv --keyserver keyring.debian.org --recv-keys 0E98404D386FA1D9
apt-key adv --keyserver keyring.debian.org --recv-keys B7C5D7D6350947F8

# configure repo
echo 'deb http://archive.debian.org/debian buster-backports main contrib non-free' >/etc/apt/sources.list.d/backports.list

# install
apt update
apt install cmake/buster-backports
```

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
apt-get install ruby ruby-dev build-essential

# For Ruby < 2.6
gem install --no-ri --no-rdoc fpm

# For Ruby 2.6+
gem install --no-document fpm
```

Then create packages via:

```sh
make
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
make DIST=buster
```
