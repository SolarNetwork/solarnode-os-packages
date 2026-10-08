# sunspec-shell for SolarNode

[sunspec-shell](https://github.com/SolarNetwork/nifty-sunspec/tree/main/shell) is an interactive
shell for exploring the data made available by SunSpec-compatible modbus devices.

## Building

A Java 25 GraalVM must be available.

```sh
sudo apt install rustc cargo git libssl-dev make
```

Clone the git repository, check out the release tag, and build like this:

```sh
git clone https://github.com/SolarNetwork/nifty-sunspec.git
cd nifty-sunspec
git checkout 0.1.0
GRAALVM_HOME=/opt/graalvm@25 ./gradlew nativeCompile
cd ..
make
```

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt install ruby ruby-dev build-essential

$ sudo gem install --no-document fpm
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
make DIST=bookworm
```

