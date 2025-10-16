# SolarNode Application - Core change log - 4.x series

This document details the history of changes of the `solarnode-app-core` package 4.x series, from
newest to oldest.

# Older releases

 * [3.x series](./CHANGELOG-3.x.md)
 * [2.x series](./CHANGELOG-2.x.md)
 * [1.x series](./CHANGELOG-1.x.md)

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

## 4.2.1 - 2025-10-17

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 | 4.0.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.2 | 4.0.3 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.1 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.1 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.4 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.7.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.1.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.3 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.1.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.1 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.1 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.1.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.2.0 - 2025-10-13

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 | 4.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.1 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.4 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.7.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.1.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.2 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.1.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.1 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.1 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.1.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.1.1 - 2025-10-07

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.3 | 5.0.4 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.1 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.4 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.7.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.1.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.2 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.1 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.1 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.1.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.1.0 - 2025-10-06

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 | 4.7.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 | 2.1.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.1 | 4.0.2 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 | 4.0.1 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 | 4.1.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 | 4.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.1 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.3 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.7.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.1.1 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.2 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.1 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.1 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.1.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.0.4 - 2025-09-05

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.0 | 2.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.1 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.3 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.0.3 - 2025-07-22

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.2 | 5.0.3 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.0 | 4.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.3 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.0.2 - 2025-07-10

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.1 | 5.0.2 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.0.1 - 2025-07-08

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Support              | `n.s.n.setup`                  | 4.0.0 | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.0 | 5.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |


## 4.0.0 - 2025-06-24

Requires [`solarnode-base`](../../solarnode-base/debian) **5.0** or higher. This is a major
internal update. Most plugins have been updated, however the user-visible UI remains unchanged.

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 3.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 4.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 4.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 4.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 4.0.0 |
| Common AWS S3 Support - SDK     | `n.s.common.s3.sdk`            | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 2.0.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 4.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 3.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 4.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 4.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 4.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 4.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 5.0.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 4.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web.jakarta`       | 2.0.6 |
| Core SolarNode Framework        | `n.s.node`                     | 4.0.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 4.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 4.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 3.0.0 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 2.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 4.0.0 |
| Metrics Core                    | `n.s.n.metrics`                | 2.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 4.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 4.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 4.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 4.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 4.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 5.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 4.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 4.0.0 |
