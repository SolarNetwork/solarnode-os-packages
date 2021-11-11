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
