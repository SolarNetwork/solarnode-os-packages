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

## 1.18.0 - 2021-05-29

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


## 1.17.0 - 2021-05-17

The following plugins have changed from the previous release:

| Name                                 | ID                             | Old Vers | New Vers |
|:-------------------------------------|:-------------------------------|:---------|:---------|
| Core Database Storage Support        | `n.s.n.dao.jdbc`               | 1.28.2 | 1.28.3 |
| Core Settings Support                | `n.s.n.settings.ca`            | 1.12.0 | 1.13.0 |
| Core Setup Web App                   | `n.s.n.setup.web`              | 1.48.0 | 1.49.0 |
| Core SolarNetwork Support            | `n.s.common`                   | 1.70.0 | 1.71.0 |
| Core SolarNode Framework             | `n.s.node`                     | 1.82.0 | 1.83.0 |
| Metadata Service (SolarNetwork)      | `n.s.n.metadata.json`          | 1.4.1  | 1.5.0  |
| MQTT client - Netty                  | `n.s.common.mqtt.netty`        | 1.2.0  | 1.2.2  |
| S3 Setup                             | `n.s.n.setup.s3`               | 1.2.0  | 1.2.1  |
| SolarIn/HTTP Upload Service          | `n.s.n.upload.bulkjsonwebpost` | 1.11.0 | 1.11.1 |
| SolarIn/MQTT integration             | `n.s.n.upload.mqtt`            | 1.6.2  | 1.8.1  |
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
