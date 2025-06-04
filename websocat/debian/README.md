# websocat for SolarNode

[websocat](https://github.com/vi/websocat) enables CLI websocket use, for example for
testing OCPP connections.

## Building on Debian 11

Make sure Rust, Cargo, git, and development libraries are installed, e.g.

```sh
sudo apt install rustc cargo git libssl-dev make
```

Clone the git repository, check out the release tag, and build like this:

```sh
git clone https://github.com/vi/websocat.git
cd websocat
git checkout v1.10.1
cargo build --release --features=ssl
cd ..
make
```

## Building on Debian 12

Same as for Debian 11, but checkout `v1.13.0`.

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt install ruby ruby-dev build-essential

$ sudo gem install --no-document fpm
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
make DIST=buster
```
