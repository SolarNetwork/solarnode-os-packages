# yasdi4j for SolarNode

## Building

Make sure `ant`, `openjdk-8-jdk-headless`, `make` and  are installed, e.g.

```sh
apt-get install ant openjdk-8-jdk-headless make
```

```sh
git clone https://github.com/SolarNetwork/yasdi4j.git
cd yasdi4j
ant compile
cd jni
make JAVA_HOME=/usr/lib/jvm/java-8-openjdk-i386 YASDI=/usr CFLAGS=-fPIC
cd ..
ant dist
cd ..
make
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
