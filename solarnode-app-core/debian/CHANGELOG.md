# SolarNode Application - Core change log

This document details the history of changes of the `solarnode-app-core` package, from newest to
oldest.

The **plugin ID** values listed here refer to plugin OSGi symbolic names, defined in the
`Bundle-SymbolicName` entry of each plugin's `META-INF/MANIFEST.MF` file. They are abbreviated to
make them shorter, using the following conventions:

| ID abbreviation | Full value                |
|:----------------|:--------------------------|
| `n.s.common`    | `net.solarnetwork.common` |
| `n.s.n`         | `net.solarnetwork.node`   |

# 3.17.0 - 2024-04-10

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework        | `n.s.node`                     | 3.7.1 | 3.8.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.2.0 | 3.2.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.9.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.8.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.2.1 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.16.0 - 2024-04-10

This switches the _default_ database dependency from Derby to H2. Derby is still supported by
installing the `solarnode-app-db-derby` package explicitly.

# 3.15.1 - 2024-04-10

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.1 | 4.2.2 |
| Core SolarNode Framework        | `n.s.node`                     | 3.7.0 | 3.7.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.9.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.7.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.2.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.15.0 - 2024-04-07

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.1.0 | 3.2.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.9.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.7.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.2.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.14.0 - 2024-04-06

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.9.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.7.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.1.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.13.0 - 2024-04-03

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Support       | `n.s.common`                   | 3.6.2 | 3.9.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 | 3.7.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.9.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.7.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.12.1 - 2024-03-18

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.0 | 4.2.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.6.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |

# 3.12.0 - 2024-03-10

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.1.0 | 4.2.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.2.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.6.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.11.0 - 2024-03-02

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.1 | 3.1.2 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.4 | 4.1.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 | 3.6.2 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.2 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.1.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.6.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.10.2 - 2024-01-19

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.3 | 4.0.4 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.1 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.4 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.10.1 - 2023-12-19

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 | 3.1.1 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.1 | 4.0.3 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 | 3.6.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.1 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.3 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.1 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.10.0 - 2023-12-16

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.4 | 4.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 4.0.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.9.3 - 2023-12-05

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.3 | 3.5.4 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.4 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.9.2 - 2023-12-04

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.2 | 3.5.3 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.1 | 3.0.2 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.3 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.2 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.9.1 - 2023-12-01

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.1 | 3.5.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.1 | 3.5.2 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 | 3.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.2 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.1 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.9.0 - 2023-11-25

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.0 | 3.5.1 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.1.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.8.0 - 2023-11-23

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 | 3.1.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.4.0 | 3.5.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.5.0 | 3.6.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.1.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.5.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.6.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.7.0 - 2023-10-29

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 | 3.1.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.2 | 3.4.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.4.0 | 3.5.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.2.1 | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.3.0 | 3.5.0 |


The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.1.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.4.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.5.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.5.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.6.0 - 2023-07-20

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 | 3.1.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.3.0 | 3.4.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.2.2 | 3.3.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.1.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.4.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.2.1 |
| Core SolarNode Framework        | `n.s.node`                     | 3.3.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.5.0 - 2023-07-11

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.1 | 3.2.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.2.0 | 3.3.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.2.0 | 3.2.2 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.2 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.3.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.2.1 |
| Core SolarNode Framework        | `n.s.node`                     | 3.2.2 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.4.0 - 2023-06-04

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.0 | 3.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.1.1 | 3.2.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.1 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.2.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.2.1 |
| Core SolarNode Framework        | `n.s.node`                     | 3.2.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.3.0 - 2023-04-18

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core OSGi Support               | `n.s.common.osgi`              | 2.0.0 | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.0.0 | 3.1.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.1 | 3.1.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.0.0 | 3.2.1 |
| Core SolarNode Framework        | `n.s.node`                     | 3.1.0 | 3.2.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.0.0 | 3.1.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.0.0 | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.1.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.1.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.1.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.2.1 |
| Core SolarNode Framework        | `n.s.node`                     | 3.2.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.1.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.1.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.2.1 - 2023-03-27

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.0 | 3.0.1 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.1 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.0.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.1.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


# 3.2.0 - 2023-03-22

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.1.0 | 3.2.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.0.0 | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.2.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.0.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.1.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


## 3.1.0 - 2023-03-14

The following plugins have changed from the previous release:

| Name                            | ID                             | Old Vers | New Vers |
|:--------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App              | `n.s.n.setup.web`              | 3.0.0 | 3.1.0 |

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.1.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.0.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.0.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |


## 3.0.0 - 2023-03-08

Requires [`solarnode-base`](../../solarnode-base/debian) **2.0** or higher. This is a major
internal update. Most plugins have been updated, however the user-visible UI remains unchanged.

The complete list of plugins included is:

| Name                            | ID                             | Vers  |
|:--------------------------------|:-------------------------------|:------|
| Auto Setup                      | `n.s.n.setup.auto`             | 2.0.0 |
| Backup External Filesystems     | `n.s.n.backup.ext`             | 3.0.0 |
| Bouncy Castle PKI               | `n.s.common.pki.bc`            | 3.0.0 |
| Command Line System Service     | `n.s.n.system.cmdline`         | 3.0.0 |
| Common AWS S3 Support           | `n.s.common.s3`                | 3.0.0 |
| Core Database Connection        | `n.s.n.dao.jdbc.con`           | 1.1.0 |
| Core Database Storage Support   | `n.s.n.dao.jdbc`               | 3.0.0 |
| Core OSGi Support               | `n.s.common.osgi`              | 2.0.0 |
| Core Reactor Service            | `n.s.n.reactor.simple`         | 3.0.0 |
| Core Security                   | `n.s.n.setup.security`         | 3.0.0 |
| Core Settings Support           | `n.s.n.settings.ca`            | 3.0.0 |
| Core Setup Support              | `n.s.n.setup`                  | 3.0.0 |
| Core Setup Web App              | `n.s.n.setup.web`              | 3.0.0 |
| Core SolarNetwork Support       | `n.s.common`                   | 3.0.0 |
| Core SolarNetwork Web Support   | `n.s.common.web`               | 3.0.0 |
| Core SolarNode Framework        | `n.s.node`                     | 3.0.0 |
| Debian Setup Support            | `n.s.n.setup.deb`              | 3.0.0 |
| Eclipse Gemini Web Support      | `n.s.common.web.gemini`        | 3.0.0 |
| Hikari JDBC Connection Pool     | `n.s.common.jdbc.pool.hikari`  | 2.0.3 |
| Log4j2 Support                  | `n.s.n.setup.log4j2`           | 1.0.0 |
| Metadata Service (SolarNetwork) | `n.s.n.metadata.json`          | 3.0.0 |
| Plugin Repository               | `n.s.n.setup.obr`              | 3.0.0 |
| Reactor Database Storage        | `n.s.n.reactor.dao.jdbc`       | 3.0.0 |
| S3 Backup                       | `n.s.n.backup.s3`              | 3.0.0 |
| S3 Setup                        | `n.s.n.setup.s3`               | 3.0.0 |
| SolarIn/HTTP Upload Service     | `n.s.n.upload.bulkjsonwebpost` | 3.0.0 |
| SolarIn/MQTT integration        | `n.s.n.upload.mqtt`            | 3.0.0 |
| SolarNet Location Service       | `n.s.n.location.ws`            | 4.0.0 |
| Spring Expression Service       | `n.s.common.expr.spel`         | 3.0.0 |
| System SSH Support              | `n.s.n.system.ssh`             | 3.0.0 |

# Older releases

 * [2.x series](./CHANGELOG-2.x.md)
 * [1.x series](./CHANGELOG-1.x.md)

[app-db-derby]: ../../solarnode-app-db-derby/debian/
[jdbc-default-settings]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.dao.jdbc/src/net/solarnetwork/node/dao/jdbc/net.solarnetwork.jdbc.pool.default.properties
