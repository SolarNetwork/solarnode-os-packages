# SolarNode Platform - Spring Security

This directory contains support for building the `solarnode-base-spring-security` package. This adds 
[Spring Security][spring-security] support to the SolarNode platform. See
[CHANGELOG](./CHANGELOG.md) for release information.

# Build requirements

You must clone the [solarnetwork-build][sn-build] repository in this directory (or make a symlink
to it). Packaging is done via `make` with [ant][ant] and [fpm][fpm]. To get started:

```sh
sudo apt-get install git git-lfs ant ruby ruby-dev build-essential
sudo gem install --no-ri --no-rdoc fpm

# if you have solarnetwork-build checked out elsewhere, then
ln -s /path/to/solarnetwork-build

# or, clone solarnetwork-build directly (note that git-lfs is required)
git clone https://github.com/SolarNetwork/solarnetwork-build.git
```

# Building

Run `make` to build the package, which will produce `solarnode-base-spring-security_VERSION_all.deb` in
this directory.

[ant]: https://ant.apache.org/
[fpm]: https://github.com/jordansissel/fpm
[spring-security]: https://spring.io/projects/spring-security
[sn-build]: https://github.com/SolarNetwork/solarnetwork-build/
