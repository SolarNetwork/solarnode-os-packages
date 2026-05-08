# Docker Package Repository for SolarNode

This package configures the `download.docker.com/linux/debian` package repository to support installing
Docker in SolarNode.

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
$ sudo apt install ruby ruby-dev build-essential

$ sudo gem install --no-document fpm
```
