# SolarNode Base Platform

This directory contains support for building the `solarnode-base` package. This package provides the
minimal OSGi-based platform for SolarNode applications to be deployed on. The OSGi implementation
is [Eclipse Equinox][equinox]. This document will outline what is provided by all OS-specific
packages.

# Base directories

The OS packages install files in several "base" directories that vary per OS. This document will
describe the base directories by standardized names. Refer to the OS-specific documentation in 
the sub-directories of this one to see what path the names actually refer to.

| Name              | Description |
|:------------------|:------------|
| `SOLARNODE_CONF`  | The directory where configuration files are stored for SolarNode. |
| `SOLARNODE_HOME`  | The runtime working directory for the SolarNode service. |
| `SOLARNODE_RUN`   | The directory where dynamic, temporary run-time data is stored by SolarNode. This is often a RAM-based filesystem such as `tmpfs` on Linux. |
| `SOLARNODE_SHARE` | The directory where most SolarNode resources are installed. |

# OSGi platform add-ons

The base platform can be extended with additional OSGi bundles by creating special `*.bundles`
fragment files in the `${SOLARNODE_SHARE}/conf/config.ini.d` directory. Any files found there will
be _appended_ to the Equinox `osgi.bundles` property in the Equinox `config.ini` startup file that
the SolarNode runtime uses. The contents of the `*.bundles` file must start with a `,` character,
followed by the comma-delimited list of bundles to include in the runtime. Relative paths will
be from the `${SOLARNODE_HOME}/app` directory.

For example, the following `${SOLARNODE_SHARE}/conf/config.ini.d/super-duper.bundles` file would
start the `${SOLARNODE_HOME}/app/core/super-duper-1.2.3.jar`:

```
,core/super-duper-1.2.3.jar@4\:start
```

# System classpath add-ons

Arbitrary Java JAR files can be added to the SolarNode runtime system classpath by placing them in
the `${SOLARNODE_SHARE}/app/ext` directory.

# Shared library path

The `${SOLARNODE_HOME}/lib` directory is included in the `java.library.path` system property. Any
native libraries needed by SolarNode can be added there.

[equinox]: https://www.eclipse.org/equinox/