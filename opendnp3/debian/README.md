# OpenDNP3 Debian packaging

This directory contains packaging scripts used to create the OpenDNP3 `.deb`.
See [the wiki][wiki-docs] for more info on building OpenDNP3.

## Building

Follow the [wiki guide][wiki-docs] on building OpenDNP3. You can check out the git
repository directly into this directory, or create a symlink to it. Either way, you
should have a `dnp3` directory (or link to one) in this directory. The `Makefile`
used below defaults to a `cmake` build directory `dnp3/build/native/local`. You
can change that by passing a `DNP3_INSTALL_DIR` variable to `make`, as shown here:


```sh
make DNP3_INSTALL_DIR=dnp3/build/native/local
```

If building a different upstream version, pass the `UPSTREAM_VERSION` variable:

```sh
$ make UPSTREAM_VERSION=2.3.2
```

If building with OpenSSL 1.1, call like this:

```sh
$ make SSL_DEP=libssl1.1 SSL_DEV_DEP=libssl-dev
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
$ make DIST=buster UPSTREAM_VERSION=2.3.2 PKG_VERSION=1 SSL_DEP=libssl1.1 SSL_DEV_DEP=libssl-dev
```

### OpenDNP3 3

After building OpenDNP3 version 3 you can delete the `usr/lib/cmake` directory so it is not included
in the package. For example:

```sh
# On Debian 10
sudo apt install git gcc g++ libc-dev cmake make patch libssl1.1 libssl-dev openjdk-11-jdk maven \
    ruby ruby-dev build-essential

sudo gem install --no-ri --no-rdoc fpm

# For Ruby 2.6+
# sudo gem install --no-document fpm

git clone https://github.com/SolarNetwork/solarnode-os-packages.git
cd solarnode-os-packages/opendnp3/debian/
git clone https://github.com/dnp3/opendnp3.git dnp3
cd dnp3
git checkout 3.1.2
mkdir -p build/native
cd build/native
cmake ../.. -DDNP3_JAVA=ON -DDNP3_TLS=ON -DDNP3_DECODER=ON \
    -DJAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 \
    -DCMAKE_INSTALL_PREFIX:PATH=$PWD/local/usr
make && make install
rm -rf local/usr/lib/cmake
cd ../../..

make DIST=buster UPSTREAM_VERSION=3.1.2
```

[wiki-docs]: https://github.com/SolarNetworkFoundation/solarnetwork-ops/wiki/OpenDNP3-Debian-Packaging
