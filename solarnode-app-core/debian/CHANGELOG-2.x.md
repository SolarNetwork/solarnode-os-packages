# SolarNode Application - Core change log - 2.x series

This document details the history of changes of the `solarnode-app-core` package 2.x series, from
newest to oldest. For the latest releases, see [CHANGELOG](./CHANGELOG.md).

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 2.13.0 - 2023-03-07

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  | 2.1.0  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.1  | 2.4.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.7.1  | 2.7.3  |
| Core SolarNode Framework        | `n.s.node`                     | 2.10.0 | 2.11.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  | 2.2.0  |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.5.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.1.0  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.4.0  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.7.3  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.13.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.11.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3  |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.2.0  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.2  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.12.1 - 2023-02-26

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 2.7.0  | 2.7.1  |


The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.5.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.1  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.7.1  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.13.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.10.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3  |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.2  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.12.0 - 2023-02-26

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 2.6.1  | 2.7.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.1  | 2.10.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | -      | 1.0.0  |


The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.5.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.1  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.7.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.13.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.10.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3  |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.2  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.11.1 - 2023-01-31

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 2.6.0  | 2.6.1  |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.5.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.1  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.6.1  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.13.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.1  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.2  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.11.0 - 2023-01-09

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.1  | 2.5.0  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0  | 2.3.1  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.2  | 2.6.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.11.0 | 2.13.1 |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.0  | 2.9.1  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2  | 2.0.3  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1  | 2.0.2  |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.5.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.1  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.6.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.13.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.1  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.2  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.10.1 - 2022-10-22

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.0  | 2.4.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.0  | 2.5.2 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.2  | 2.0.3 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.0  | 2.1.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.1  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.2  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.11.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.0  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.3  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.1  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.10.0 - 2022-10-14

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework        | `n.s.node`                     | 2.8.1  | 2.9.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.0.0  | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.11.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.9.0  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.2  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.0  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.1.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.9.1 - 2022-10-06

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.2.0  | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.8.0  | 2.8.1  |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.11.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.4.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.8.1  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.2  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.0  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.0.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.9.0 - 2022-09-16

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Support       | `n.s.common`                   | 2.4.2  | 2.11.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.1.2  | 2.2.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.6.2  | 2.8.0  |

The complete list of plugins included is:

| Name                            | ID                             | Vers   |
|:--------------------------------|:-------------------------------|:-------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2  |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0  |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0  |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0  |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0  |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0  |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.0  |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0  |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0  |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2  |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0  |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0  |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.0  |
| Core SolarNetwork Support       | `n.s.common`                   | 2.11.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.2.0  |
| Core SolarNode Framework        | `n.s.node`                     | 2.8.0  |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0  |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0  |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2  |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1  |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1  |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2  |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0  |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1  |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.2  |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.0  |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.0.0  |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0  |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0  |


## 2.8.0 - 2022-06-01

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.0.0 | 2.1.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.2.0 | 2.3.0 |
| Core Setup Support              | `n.s.n.setup`                  | 2.2.1 | 2.3.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.4.1 | 2.5.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 2.3.1 | 2.4.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.1.0 | 2.1.2 |
| Core SolarNode Framework        | `n.s.node`                     | 2.5.0 | 2.6.2 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.1 | 2.0.2 |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.0 | 2.0.1 |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.0.0 | 2.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 2.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 2.4.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support           | `n.s.n.settings.ca`            | 2.3.0 |
| Core Setup Support              | `n.s.n.setup`                  | 2.3.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 2.5.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 2.4.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 2.1.2 |
| Core SolarNode Framework        | `n.s.node`                     | 2.6.2 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 2.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 2.2.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.2 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 2.1.1 |
| Plugin Repository               | `n.s.n.setup.obr`              | 2.0.1 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 2.0.2 |
| S3 Backup                       | `n.s.n.backup.s3`              | 2.1.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 2.0.2 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 3.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 2.0.0 |


## 2.7.0 - 2022-04-12

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 | 1.1.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.3.1 | 2.4.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.4.2 | 2.5.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 | [moved][app-db-derby]
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 | [moved][app-db-derby]
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 | 2.1.1 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 | 2.0.2 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.4.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.1 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.5.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.1 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.2 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.2 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.6.2 - 2022-04-09

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.2.0 | 2.3.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.0 | 2.3.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.1 | 2.0.2 |


The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.3.1 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.1 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.4.2 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.2 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.5.1 - 2022-04-06

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 2.4.1 | 2.4.2 |


The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.2.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.4.2 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.1 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.5.0 - 2022-04-05

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.2 | 2.2.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.0 | 2.4.1 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.3.0 | 2.4.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 | 2.0.1 |


The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.2.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.4.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.1 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.4.1 - 2022-03-25

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.3.0 | 2.4.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 | 2.0.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.2 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.4.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.3.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.1 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.4.0 - 2022-03-23

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 | 2.1.0 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 | 2.2.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 | 2.3.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.2 | 2.3.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 | 2.1.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 | 2.1.0 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.2 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.1.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.2.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.3.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.3.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.1.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.1.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.5 - 2022-01-28

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.1 | 2.0.2 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.2 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.2 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.4 - 2022-01-28

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 | 2.0.1 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.1 | 2.2.2 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 | 2.0.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.1 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.2 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.1 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.3 - 2021-12-24

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Security                            | `n.s.n.setup.security`         | 2.0.1 | 2.0.2 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.2 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.2 - 2021-12-23

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.0 | 2.2.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.1 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.1 - 2021-12-18

Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher.

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.0 | 2.2.1 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.0 | 2.0.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.1 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.1 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.3.0 - 2021-12-17

Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher.

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Support                       | `n.s.n.setup`                  | 2.1.0 | 2.2.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.1.0 | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.1.1 | 2.2.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.0.0 | 2.1.0 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.1 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.2.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.1.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.0 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.2.0 - 2021-12-08

Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher.

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Security                            | `n.s.n.setup.security`         | 2.0.0 | 2.0.1 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.0.0 | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.0.0 | 2.1.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.0.0 | 2.1.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.1.0 | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.1.0 | 2.1.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.1 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.1.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.1.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.1.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.0.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.0 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.1.0 - 2021-11-22

Requires [`solarnode-base`](../../solarnode-base/debian) **1.12** or higher.

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Support                | `n.s.common`                   | 2.0.0 | 2.1.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.0.0 | 2.1.0 |


The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.0 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.0.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.0.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.0.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.1.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.1.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.0.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.0 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |


## 2.0.0 - 2021-10-12

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher. This is a major
internal update. Most plugins have been updated, however the user-visible UI remains unchanged.

The complete list of plugins included is:

| Name                                     | ID                             | Vers  |
|:-----------------------------------------|:-------------------------------|:------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.2 |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 2.0.0 |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 2.0.0 |
| Command Line System Service              | `n.s.n.system.cmdline`         | 2.0.0 |
| Common AWS S3 Support                    | `n.s.common.s3`                | 2.0.0 |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0 |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 2.0.0 |
| Core OSGi Support                        | `n.s.common.osgi`              | 1.0.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 |
| Core Security                            | `n.s.n.setup.security`         | 2.0.0 |
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.0.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 2.0.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.0.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.0.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.0.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 2.0.0 |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.2 |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 2.0.0 |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.2.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 2.0.0 |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 2.0.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 2.0.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 2.0.0 |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 2.0.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 2.0.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 3.0.0 |
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 2.0.0 |
| Spring Expression Service                | `n.s.common.expr.spel`         | 2.0.0 |
| System SSH Support                       | `n.s.n.system.ssh`             | 2.0.0 |

# Older releases

 * [1.x series](./CHANGELOG-1.x.md)

[app-db-derby]: ../../solarnode-app-db-derby/debian/
[jdbc-default-settings]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.dao.jdbc/src/net/solarnetwork/node/dao/jdbc/net.solarnetwork.jdbc.pool.default.properties
