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

## 2.4.0 - 2022-03-04

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 2.0.0 | 2.1.0 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 2.2.0 | 2.3.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 2.2.0 | 2.3.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 2.2.2 | 2.3.0 |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 2.0.0 | 2.1.0 |

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
| Core Settings Support                    | `n.s.n.settings.ca`            | 2.1.0 |
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
| SolarNetwork Common Web                  | `n.s.common.web`               | 2.0.0 |
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


## 1.26.1 - 2021-09-13

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.91.0 | 1.91.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.2  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.30.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Security                            | `n.s.n.setup.security`         | 1.1.0  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.3 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.78.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.91.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.3  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.10.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.5.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.26.0 - 2021-08-31

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.89.0 | 1.91.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  | 2.5.0  |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.2  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.30.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Security                            | `n.s.n.setup.security`         | 1.1.0  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.3 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.78.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.91.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.3  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.10.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.5.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.25.0 - 2021-08-12

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 | 1.30.0 |
| Core Security                            | `n.s.n.setup.security`         | 1.0.1  | 1.1.0  |
| Core SolarNetwork Support                | `n.s.common`                   | 1.76.0 | 1.78.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.88.0 | 1.89.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  | 1.10.0 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.2  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.30.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Security                            | `n.s.n.setup.security`         | 1.1.0  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.3 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.78.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.89.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.3  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.10.0 |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.24.0 - 2021-08-07

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 | 1.14.3 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 | 1.50.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.1 | 1.76.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.3 | 1.88.0 |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  | 1.5.3  |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.2  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Security                            | `n.s.n.setup.security`         | 1.0.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.3 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.76.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.88.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.3  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.23.4 - 2021-08-05

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.0  | 1.0.2  |
| Core Security                            | `n.s.n.setup.security`         | 1.0.0  | 1.0.1  |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 | 1.75.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Backup External Filesystems              | `n.s.n.backup.ext`             | 1.0.2  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Security                            | `n.s.n.setup.security`         | 1.0.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.1 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.3 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.23.3 - 2021-08-02

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.2 | 1.87.3 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.3 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.23.2 - 2021-07-28

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.1 | 1.87.2 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.2 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.23.1 - 2021-07-28

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.0 | 1.87.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.23.0 - 2021-07-21

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 | 1.50.0 |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  | 1.3.0  |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.50.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.3.0  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.22.1 - 2021-07-10

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.0 | 1.14.1 |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.1 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |

## 1.22.0 - 2021-07-09

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.1  | 1.1.2  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.13.0 | 1.14.0 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.74.0 | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.86.1 | 1.87.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  | 1.1.2  |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.2  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.14.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.75.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.87.0 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.2  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.21.1 - 2021-07-06

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.86.0 | 1.86.1 |


The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.1  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.74.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.86.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.21.0 - 2021-07-05

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework                 | `n.s.node`                     | 1.85.1 | 1.86.0 |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  | 1.1.2  |


The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.1  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.74.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.85.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.20.1 - 2021-06-18

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.0   | 1.29.1   |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.1  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.1 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.74.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.85.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.20.0 - 2021-06-15

This release changes how the internal database connection is configured. Previously you could
configure the connection via the `${SOLARNODE_HOME}/conf/services/net.solarnetwork.node.dao.jdbc.cfg`
file. Now the configuration is in the
`${SOLARNODE_HOME}/conf/services/net.solarnetwork.jdbc.pool.hikari-solarnode.cfg` file, and the
syntax has changed. If not configured, [default settings][jdbc-default-settings] will be used.

Requires [`solarnode-base`](../../solarnode-base/debian) **1.11** or higher

The following plugins have changed from the previous release:

| Name                                     | ID                             | Old Vers | New Vers |
|:-----------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           |          | 1.0.0    |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.28.3   | 1.29.0   |
| Core SolarNetwork Support                | `n.s.common`                   | 1.73.0   | 1.74.0   |
| Core SolarNode Framework                 | `n.s.node`                     | 1.85.0   | 1.85.1   |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  |          | 1.1.0    |

The complete list of plugins included is:

| Name                                     | ID                             | Vers   |
|:-----------------------------------------|:-------------------------------|:-------|
| Auto Setup                               | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                        | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service              | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                    | `n.s.common.s3`                | 1.1.1  |
| Core Database Connection                 | `n.s.n.dao.jdbc.con`           | 1.0.0  |
| Core Database Storage Support            | `n.s.n.dao.jdbc`               | 1.29.0 |
| Core Reactor Service                     | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                    | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                       | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                       | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support                | `n.s.common`                   | 1.74.0 |
| Core SolarNode Framework                 | `n.s.node`                     | 1.85.1 |
| Debian Setup Support                     | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions                | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support           | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support               | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)          | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                        | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage                 | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                     | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                                | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                                 | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service              | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration                 | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service                | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web                  | `n.s.common.web`               | 1.17.0 |
| SolarNetwork Hikari JDBC Connection Pool | `n.s.common.jdbc.pool.hikari`  | 1.1.0  |
| SolarNode External Filesystem Backup     | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                       | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service                | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                       | `n.s.n.system.ssh`             | 1.1.1  |


## 1.19.0 - 2021-06-09

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 | 1.22.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.71.0 | 1.73.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.84.1 | 1.85.0 |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.5.0  | 1.6.0  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 | 1.12.0 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.3  | 1.9.0  |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.1 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.73.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.85.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.6.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.12.0 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.9.0  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |

## 1.18.1 - 2021-05-30

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core SolarNode Framework             | `n.s.node`                     | 1.84.0 | 1.84.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.2  | 1.8.3  |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.84.1 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.5.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.3  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.18.0 - 2021-05-28

This release differs from 1.17.1 in how the MQTT support plugins is packaged: that
is now provided by the `solarnode-app-io-mqtt` package, so the associated
plugins are no longer listed here. That package relies on an implementation package, of which there
are Netty and Eclipse Paho implementations to chose from. To maintain the previous Netty
setup as in 1.17.1, the following upgrade command can be used:

```
sudo apt install solarnode-app-core solarnode-app-io-mqtt-netty
```

To switch to the Paho implementation:

```
sudo apt install solarnode-app-io-mqtt-paho
```

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.0 | 1.49.1 |
| Core SolarNode Framework             | `n.s.node`                     | 1.83.0 | 1.84.0 |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.2  |        |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  | 1.4.1  |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.1  | 1.8.2  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.3.0  |        |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.84.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.5.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.1  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.1  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.17.1 - 2021-05-25

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.1  | 1.2.2  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  | 1.2.1  |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.83.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.5.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.2  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.1  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.3.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.17.0 - 2021-05-17

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 | 1.13.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.48.0 | 1.49.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.70.0 | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.82.0 | 1.83.0 |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.4.1  | 1.5.0  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  | 1.2.1  |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.0  | 1.8.1  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  | 1.1.0  |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.13.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.49.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.83.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.5.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.1  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.1  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.3.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.1.0  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.16.0 - 2021-05-06

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.47.0 | 1.48.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.69.0 | 1.70.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.81.0 | 1.82.0 |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.0  | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.7.0  | 1.8.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.2.0  | 2.3.0  |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.48.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.70.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.82.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.1  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.1  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.8.0  |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.3.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.15.0 - 2021-05-04

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.2   | 1.28.3   |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.46.0   | 1.47.0   |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0   | 1.69.0   |
| Core SolarNode Framework             | `n.s.node`                     | 1.81.0   | 1.81.1   |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0    | 1.2.0    |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0    | 2.2.0    |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.2    | 1.7.0    |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.3 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.47.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.69.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.81.1 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.1  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.7.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.2.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.14.0 - 2021-04-09

 * Updates plugins
 * Requires [`solarnode-base`](../../solarnode-base/debian) **1.8** or higher

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.45.0   | 1.46.0   |
| Core SolarNode Framework             | `n.s.node`                     | 1.80.0   | 1.81.0   |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.0    | 1.4.1    |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.1    | 1.6.2    |

The complete list of plugins included is:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.2 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.46.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.81.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.1  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.2  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |


## 1.13.1 - 2021-04-07

Includes the following plugins:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.2 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.45.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.80.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.1  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.1  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |

## 1.13.0 - 2021-04-06

Includes the following plugins:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.1.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.2 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.45.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.80.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.1.0  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.1  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.1  |

## 1.12.0 - 2021-02-26

Includes the following plugins:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.0.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.1 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.11.1 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.44.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.79.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.4.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.0.0  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.1  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.0  |


## 1.11.0 - 2021-02-26

Includes the following plugins:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.0.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.0 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.11.1 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.44.1 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.68.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.79.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.3.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.0.0  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.0  |


## 1.10.0 - 2020-08-26

Includes the following plugins:

| Name                                 | ID                             | Vers   |
|:-------------------------------------|:-------------------------------|:-------|
| Auto Setup                           | `n.s.n.setup.auto`             | 1.3.1  |
| Bouncy Castle PKI                    | `n.s.common.pki.bc`            | 1.3.0  |
| Command Line System Service          | `n.s.n.system.cmdline`         | 1.2.0  |
| Common AWS S3 Support                | `n.s.common.s3`                | 1.0.1  |
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.0 |
| Core Reactor Service                 | `n.s.n.reactor.simple`         | 1.5.1  |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.11.1 |
| Core Setup Support                   | `n.s.n.setup`                  | 1.22.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.44.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.65.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.76.0 |
| Debian Setup Support                 | `n.s.n.setup.deb`              | 1.0.0  |
| Derby Database Extensions            | `n.s.n.dao.jdbc.derby.ext`     | 1.1.1  |
| Derby Database Storage Support       | `n.s.n.dao.jdbc.derby`         | 1.8.1  |
| Eclipse Gemini Web Support           | `n.s.common.web.gemini`        | 2.1.0  |
| JSON Metadata Service                | `n.s.n.metadata.json`          | 1.3.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.1.0  |
| Plugin Repository                    | `n.s.n.setup.obr`              | 1.5.2  |
| Reactor Database Storage             | `n.s.n.reactor.dao.jdbc`       | 1.4.0  |
| Reactor JSON Support                 | `n.s.n.reactor.io.json`        | 1.2.1  |
| S3 Backup                            | `n.s.n.backup.s3`              | 1.0.0  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  |
| SolarNet Bulk JSON Web Uploader      | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet Location Service            | `n.s.n.location.ws`            | 2.4.0  |
| SolarNet MQTT integration            | `n.s.n.upload.mqtt`            | 1.6.0  |
| SolarNetwork Common MQTT Support     | `n.s.common.mqtt`              | 2.1.0  |
| SolarNetwork Common Web              | `n.s.common.web`               | 1.17.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext`             | 1.0.0  |
| SolarNode Security                   | `n.s.n.setup.security`         | 1.0.0  |
| Spring Expression Service            | `n.s.common.expr.spel`         | 1.0.1  |
| System SSH Support                   | `n.s.n.system.ssh`             | 1.1.0  |


## 1.9.0 - 2020-06-26

Updates to the following plugins:

| Name | ID | Version |
|:-----|:---|:--------|
| Command Line System Service | `n.s.n.system.cmdline` | 1.2.0 |
| Core Setup Web App | `n.s.n.setup.web` | 1.44.0 |
| Core SolarNetwork Support | `n.s.common` | 1.63.0 |
| Core SolarNode Framework | `n.s.n` | 1.75.0 |
| SolarNode External Filesystem Backup | `n.s.n.backup.ext` | 1.0.0 |


## 1.8.0 - 2020-04-23

Updates to the following plugins:

| Name | ID | Version |
|:-----|:---|:--------|
| Core SolarNetwork Support | `n.s.common` | 1.61.0 |
| Core SolarNode Framework | `n.s.n` | 1.74.1 |


## 1.7.0 - 2020-04-14

Updates to the following plugins:

| Name | ID | Version |
|:-----|:---|:--------|
| SolarNetwork Common MQTT Support | `n.s.common.mqtt` | 2.1.0 |
| MQTT client - Netty | `n.s.common.mqtt.netty` | 1.1.0 |
| Core SolarNetwork Support | `n.s.common` | 1.60.0 |
| Common AWS S3 Support | `n.s.common.s3` | 1.0.1 |
| Plugin Repository | `n.s.n.setup.obr` | 1.5.2 |
| SolarNet MQTT integration | `n.s.n.upload.mqtt` | 1.6.0 |


## 1.6.0 - 2020-03-15

Updates to the following plugins:

| Name | ID | Version |
|:-----|:---|:--------|
| Core Database Storage Support | `n.s.n.dao.jdbc` | 1.27.0 |
| Core Setup Web App | `n.s.n.setup.web` | 1.43.1 |
| Core SolarNetwork Support | `n.s.common` | 1.59.0 |
| Core SolarNode Framework | `n.s.node` | 1.74.0 |
| SolarNetwork Common Web | `n.s.common.web` | 1.17.0 |


## 1.5.1 - 2020-01-30

Updates the following plugins:

| Name | ID | Version |
|:-----|:---|:--------|
| SolarNetwork Common MQTT Support | `n.s.common.mqtt` | 2.0.1 |
| SolarNet Location Service | `n.s.n.location.ws` | 2.3.0 |
| JSON Metadata Service | `n.s.n.metadata.json` | 1.2.0 |
| Core Setup Support | `n.s.n.setup` | 1.22.0 |
| Core Setup Web App | `n.s.n.setup.web` | 1.43.0 |
| SolarNet Bulk JSON Web Uploader | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 |
| SolarNet MQTT integration | `n.s.n.upload.mqtt` | 1.5.1 |


## 1.5.0 - 2020-01-27

 * Update Core SolarNetwork Support to **1.58.0**

## 1.4.2 - 2020-01-24

 * Update Core SolarNode Framework to **1.73.1**

## 1.4.1 - 2020-01-14

 * Add MQTT client - Netty **1.0.2**
 * Update MQTT integration to **1.5.0**

## 1.4.0 - 2019-12-05

 * Update Core SolarNetwork Support to **1.57.0**
 * Update SolarNetwork Common MQTT Support to **2.0.0**
 * Add MQTT client - Netty **1.0.0**
 * Update SolarNetwork Common Web to **1.16.3**
 * Update Core SolarNode Framework to **1.73.0**
 * Remove obsolete plugin MQTT Communication Support
 * Update Auto Setup to **1.3.1**
 * Update Core Setup Web App to **1.42.2**
 * Update MQTT integration to **1.4.0**

## 1.3.0 - 2019-11-07

 * Update Core SolarNetwork Support to **1.55.0**
 * Update SolarNetwork Common MQTT Support to **1.1.0**
 * Update Core SolarNode Framework to **1.71.0**
 * Update MQTT Communication Support to **1.1.0**
 * Update Core Setup Web App to **1.42.0**
 * Update MQTT integration to **1.3.0**

## 1.2.0 - 2019-10-21

 * Update Core SolarNetwork Support to **1.54.0**
 * Add Common AWS S3 Support **1.0.0**
 * Update SolarNetwork Common Web to **1.16.2**
 * Update Core SolarNode Framework to **1.70.0**
 * Update S3 Backup to **1.0.0**
 * Update Core Database Storage Support to **1.26.0**
 * Update JSON Metadata Service to **1.1.0**
 * Update Core Settings Support to **1.11.0**
 * Update S3 Setup to **1.2.0**
 * Update Core Setup Web App to **1.40.0**

## V20180613

**Note** This release requires a minimum of the **20180613** SolarNode
Platform.

 * Add MQTT SolarIn support
 * Update to latest core plugins.

## V20180409

**Note** This release requires a minimum of the **20180409** SolarNode
Platform.

 * Bug fixes, enhancements to core plugins.

## V20170928

**Note** This release requires a minimum of the **20170628** SolarNode
Platform.

 * View captured datum values directly on the node web GUI, in real time.
 * New "Upgrade All" feature on web GUI Plugin screen.
 * Better handling of plugin updates by automatically restarting after
   upgrade.

## V20170801

**Note** This release requires a minimum of the **20170628** SolarNode
Platform.

 * Update to prevent database size from growing uncontrollably over
   time.
 * Fix bug in setup rendered "Trying URL /csrf" many times while
   waiting for service to restart.

## V20170725

**Note** This release requires a minimum of the **20170628** SolarNode
Platform.

 * Update to reduce memory use from database driver.
 * Fix bug in setup that prevented the initial random login password
   from displaying.

## V20170628

**Note** This release requires a minimum of the **20170628** SolarNode
Platform.

 * Support for platform version 20170628.
 * Add system SSH plugin to support SolarSSH.


## v20170306

**Note** This release requires a minimum of the **20170306** SolarNode
Platform.

 * Support for platform version 20170306.

[jdbc-default-settings]: https://github.com/SolarNetwork/solarnetwork-node/blob/develop/net.solarnetwork.node.dao.jdbc/src/net/solarnetwork/node/dao/jdbc/net.solarnetwork.jdbc.pool.default.properties
