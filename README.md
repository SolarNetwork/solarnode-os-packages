# SolarNode OS Packages

This repository contains scripts to create operating system packages to support SolarNode.
SolarNetwork Foundation hosts a Debian [package repository][snf-repo] (and a [staging
repository][snf-repo-stage]) for pre-built Debian packages.

# Build requirements

The exact build requirements vary for each package. Most packages use [`make`][make] and
[`fpm`][fpm]. On Debian systems, these can typically be installed like this:

```sh
sudo apt install git ruby ruby-dev build-essential

sudo gem install --no-document fpm
```

Then you can clone this repository and build the packages as needed:

```sh
git clone https://github.com/SolarNetwork/solarnode-os-packages.git
cd solarnode-os-packages
git checkout develop
```

[fpm]: https://github.com/jordansissel/fpm
[make]: https://www.gnu.org/software/make/
[snf-repo]: https://debian.repo.solarnetwork.org.nz/
[snf-repo-stage]: https://debian.repo.stage.solarnetwork.org.nz/
