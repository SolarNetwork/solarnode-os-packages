# SolarNode Base Platform change log - 5.x series

This document details the history of changes of the `solarnode-base` package 5.x series, from newest to
oldest. See [CHANGELOG](./CHANGELOG.md) for the newest releases.

# Older releases

 * [4.x series](./CHANGELOG-4.x.md)
 * [3.x series](./CHANGELOG-3.x.md)
 * [2.x series](./CHANGELOG-2.x.md)
 * [1.x series](./CHANGELOG-1.x.md)

## 5.3.0 - 2026-02-22

The following plugins have changed from the previous release:

| Name                                         | ID                                              | Old Vers | New Vers |
|:---------------------------------------------|:------------------------------------------------|:---------|:---------|
| JSpecify annotations                         | `org.jspecify.jspecify`                         | -        | 1.0.0 |

The complete list of plugins included is:

| Name                                         | ID                                              | Vers     |
|:---------------------------------------------|:------------------------------------------------|:---------|
| %bundleName                                  | `org.eclipse.equinox.cm`                        | 1.5.300  |
| %systemBundle                                | `org.eclipse.osgi`                              | 3.23.100 |
| Angus Activation Registries                  | `angus-activation`                              | 2.0.3    |
| AOP Alliance API                             | `com.springsource.org.aopalliance`              | 1.0.0    |
| Apache Commons BeanUtils                     | `org.apache.commons.commons-beanutils`          | 1.9.4    |
| Apache Commons Codec                         | `org.apache.commons.commons-codec`              | 1.18.0   |
| Apache Commons Collections                   | `org.apache.commons.collections`                | 3.2.2    |
| Apache Commons IO                            | `org.apache.commons.commons-io`                 | 2.21.0   |
| Apache Felix EventAdmin                      | `org.apache.felix.eventadmin`                   | 1.6.4    |
| Apache Felix File Install                    | `org.apache.felix.fileinstall`                  | 3.5.4    |
| Apache Felix Utils                           | `n.s.external.org.apache.felix.utils`           | 1.8.4    |
| Apache ServiceMix :: Bundles :: aspectj      | `org.apache.servicemix.bundles.aspectj`         | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api    | `org.apache.servicemix.bundles.javax-cache-api` | 1.1.1    |
| Apache ServiceMix :: Bundles :: javax.inject | `org.apache.servicemix.bundles.javax-inject`    | 1.0.0    |
| attoparser                                   | `org.attoparser`                                | 2.0.7    |
| Commons Digester                             | `org.apache.commons.digester`                   | 2.1      |
| Eclipse Compiler for Java(TM)                | `org.eclipse.jdt.core.compiler.batch`           | 3.41.0   |
| HikariCP                                     | `com.zaxxer.HikariCP`                           | 7.0.2    |
| Jakarta Activation API                       | `jakarta.activation-api`                        | 2.1.4    |
| Jakarta Annotations API                      | `jakarta.annotation-api`                        | 3.0.0    |
| Jakarta Authentication                       | `jakarta.security.auth.message-api`             | 3.1.0    |
| Jakarta Expression Language API              | `jakarta.el-api`                                | 6.0.1    |
| Jakarta Mail API                             | `jakarta.mail-api`                              | 2.1.5    |
| Jakarta Servlet                              | `jakarta.servlet-api`                           | 6.1.0    |
| Jakarta Validation API                       | `jakarta.validation.jakarta.validation-api`     | 3.1.1    |
| Jakarta WebSocket - Client API               | `jakarta.websocket-client-api`                  | 2.2.0    |
| Jakarta WebSocket - Server API               | `jakarta.websocket-api`                         | 2.2.0    |
| Joda-Time                                    | `joda-time`                                     | 2.13.0   |
| JSpecify annotations                         | `org.jspecify.jspecify`                         | 1.0.0    |
| org.osgi:org.osgi.namespace.implementation   | `org.osgi.namespace.implementation`             | 1.0.0    |
| org.osgi:org.osgi.service.cm                 | `org.osgi.service.cm`                           | 1.6.1    |
| org.osgi:org.osgi.service.coordinator        | `org.osgi.service.coordinator`                  | 1.0.2    |
| org.osgi:org.osgi.service.event              | `org.osgi.service.event`                        | 1.4.1    |
| org.osgi:org.osgi.service.jdbc               | `org.osgi.service.jdbc`                         | 1.1.0    |
| org.osgi:org.osgi.util.function              | `org.osgi.util.function`                        | 1.2.0    |
| org.osgi:org.osgi.util.promise               | `org.osgi.util.promise`                         | 1.3.0    |
| org.osgi:osgi.annotation                     | `osgi.annotation`                               | 8.1.0    |
| SolarNetwork Pidfile                         | `n.s.common.pidfile`                            | 1.1.0    |
| unbescape                                    | `org.unbescape`                                 | 1.1.6    |


## 5.2.0 - 2026-01-12

The following plugins have changed from the previous release:

| Name                                         | ID                                              | Old Vers | New Vers |
|:---------------------------------------------|:------------------------------------------------|:---------|:---------|
| Super CSV Core                               | `net.sf.supercsv.super-csv`                     | 2.4.0    | - |

The complete list of plugins included is:

| Name                                         | ID                                              | Vers     |
|:---------------------------------------------|:------------------------------------------------|:---------|
| %bundleName                                  | `org.eclipse.equinox.cm`                        | 1.5.300  |
| %systemBundle                                | `org.eclipse.osgi`                              | 3.23.100 |
| Angus Activation Registries                  | `angus-activation`                              | 2.0.3    |
| AOP Alliance API                             | `com.springsource.org.aopalliance`              | 1.0.0    |
| Apache Commons BeanUtils                     | `org.apache.commons.commons-beanutils`          | 1.9.4    |
| Apache Commons Codec                         | `org.apache.commons.commons-codec`              | 1.18.0   |
| Apache Commons Collections                   | `org.apache.commons.collections`                | 3.2.2    |
| Apache Commons IO                            | `org.apache.commons.commons-io`                 | 2.21.0   |
| Apache Felix EventAdmin                      | `org.apache.felix.eventadmin`                   | 1.6.4    |
| Apache Felix File Install                    | `org.apache.felix.fileinstall`                  | 3.5.4    |
| Apache Felix Utils                           | `n.s.external.org.apache.felix.utils`           | 1.8.4    |
| Apache ServiceMix :: Bundles :: aspectj      | `org.apache.servicemix.bundles.aspectj`         | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api    | `org.apache.servicemix.bundles.javax-cache-api` | 1.1.1    |
| Apache ServiceMix :: Bundles :: javax.inject | `org.apache.servicemix.bundles.javax-inject`    | 1.0.0    |
| attoparser                                   | `org.attoparser`                                | 2.0.7    |
| Commons Digester                             | `org.apache.commons.digester`                   | 2.1      |
| Eclipse Compiler for Java(TM)                | `org.eclipse.jdt.core.compiler.batch`           | 3.41.0   |
| HikariCP                                     | `com.zaxxer.HikariCP`                           | 7.0.2    |
| Jakarta Activation API                       | `jakarta.activation-api`                        | 2.1.4    |
| Jakarta Annotations API                      | `jakarta.annotation-api`                        | 3.0.0    |
| Jakarta Authentication                       | `jakarta.security.auth.message-api`             | 3.1.0    |
| Jakarta Expression Language API              | `jakarta.el-api`                                | 6.0.1    |
| Jakarta Mail API                             | `jakarta.mail-api`                              | 2.1.5    |
| Jakarta Servlet                              | `jakarta.servlet-api`                           | 6.1.0    |
| Jakarta Validation API                       | `jakarta.validation.jakarta.validation-api`     | 3.1.1    |
| Jakarta WebSocket - Client API               | `jakarta.websocket-client-api`                  | 2.2.0    |
| Jakarta WebSocket - Server API               | `jakarta.websocket-api`                         | 2.2.0    |
| Joda-Time                                    | `joda-time`                                     | 2.13.0   |
| org.osgi:org.osgi.namespace.implementation   | `org.osgi.namespace.implementation`             | 1.0.0    |
| org.osgi:org.osgi.service.cm                 | `org.osgi.service.cm`                           | 1.6.1    |
| org.osgi:org.osgi.service.coordinator        | `org.osgi.service.coordinator`                  | 1.0.2    |
| org.osgi:org.osgi.service.event              | `org.osgi.service.event`                        | 1.4.1    |
| org.osgi:org.osgi.service.jdbc               | `org.osgi.service.jdbc`                         | 1.1.0    |
| org.osgi:org.osgi.util.function              | `org.osgi.util.function`                        | 1.2.0    |
| org.osgi:org.osgi.util.promise               | `org.osgi.util.promise`                         | 1.3.0    |
| org.osgi:osgi.annotation                     | `osgi.annotation`                               | 8.1.0    |
| SolarNetwork Pidfile                         | `n.s.common.pidfile`                            | 1.1.0    |
| unbescape                                    | `org.unbescape`                                 | 1.1.6    |


## 5.1.0 - 2025-12-24

The following plugins have changed from the previous release:

| Name                                            | ID                                              | Old Vers | New Vers |
|:------------------------------------------------|:------------------------------------------------|:---------|:---------|
| Angus Activation Registries                  | `angus-activation`                              | 2.0.2    | 2.0.3  |
| Apache Commons IO                            | `org.apache.commons.commons-io`                 | 2.19.0   | 2.21.0 |
| HikariCP                                     | `com.zaxxer.HikariCP`                           | 6.3.0    | 7.0.2  |
| Jakarta Activation API                       | `jakarta.activation-api`                        | 2.1.3    | 2.1.4  |
| Jakarta Mail API                             | `jakarta.mail-api`                              | 2.1.3    | 2.1.4  |

The complete list of plugins included is:

| Name                                         | ID                                              | Vers     |
|:---------------------------------------------|:------------------------------------------------|:---------|
| %bundleName                                  | `org.eclipse.equinox.cm`                        | 1.5.300  |
| %systemBundle                                | `org.eclipse.osgi`                              | 3.23.100 |
| Angus Activation Registries                  | `angus-activation`                              | 2.0.3    |
| AOP Alliance API                             | `com.springsource.org.aopalliance`              | 1.0.0    |
| Apache Commons BeanUtils                     | `org.apache.commons.commons-beanutils`          | 1.9.4    |
| Apache Commons Codec                         | `org.apache.commons.commons-codec`              | 1.18.0   |
| Apache Commons Collections                   | `org.apache.commons.collections`                | 3.2.2    |
| Apache Commons IO                            | `org.apache.commons.commons-io`                 | 2.21.0   |
| Apache Felix EventAdmin                      | `org.apache.felix.eventadmin`                   | 1.6.4    |
| Apache Felix File Install                    | `org.apache.felix.fileinstall`                  | 3.5.4    |
| Apache Felix Utils                           | `n.s.external.org.apache.felix.utils`           | 1.8.4    |
| Apache ServiceMix :: Bundles :: aspectj      | `org.apache.servicemix.bundles.aspectj`         | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api    | `org.apache.servicemix.bundles.javax-cache-api` | 1.1.1    |
| Apache ServiceMix :: Bundles :: javax.inject | `org.apache.servicemix.bundles.javax-inject`    | 1.0.0    |
| attoparser                                   | `org.attoparser`                                | 2.0.7    |
| Commons Digester                             | `org.apache.commons.digester`                   | 2.1      |
| Eclipse Compiler for Java(TM)                | `org.eclipse.jdt.core.compiler.batch`           | 3.41.0   |
| HikariCP                                     | `com.zaxxer.HikariCP`                           | 7.0.2    |
| Jakarta Activation API                       | `jakarta.activation-api`                        | 2.1.4    |
| Jakarta Annotations API                      | `jakarta.annotation-api`                        | 3.0.0    |
| Jakarta Authentication                       | `jakarta.security.auth.message-api`             | 3.1.0    |
| Jakarta Expression Language API              | `jakarta.el-api`                                | 6.0.1    |
| Jakarta Mail API                             | `jakarta.mail-api`                              | 2.1.5    |
| Jakarta Servlet                              | `jakarta.servlet-api`                           | 6.1.0    |
| Jakarta Validation API                       | `jakarta.validation.jakarta.validation-api`     | 3.1.1    |
| Jakarta WebSocket - Client API               | `jakarta.websocket-client-api`                  | 2.2.0    |
| Jakarta WebSocket - Server API               | `jakarta.websocket-api`                         | 2.2.0    |
| Joda-Time                                    | `joda-time`                                     | 2.13.0   |
| org.osgi:org.osgi.namespace.implementation   | `org.osgi.namespace.implementation`             | 1.0.0    |
| org.osgi:org.osgi.service.cm                 | `org.osgi.service.cm`                           | 1.6.1    |
| org.osgi:org.osgi.service.coordinator        | `org.osgi.service.coordinator`                  | 1.0.2    |
| org.osgi:org.osgi.service.event              | `org.osgi.service.event`                        | 1.4.1    |
| org.osgi:org.osgi.service.jdbc               | `org.osgi.service.jdbc`                         | 1.1.0    |
| org.osgi:org.osgi.util.function              | `org.osgi.util.function`                        | 1.2.0    |
| org.osgi:org.osgi.util.promise               | `org.osgi.util.promise`                         | 1.3.0    |
| org.osgi:osgi.annotation                     | `osgi.annotation`                               | 8.1.0    |
| SolarNetwork Pidfile                         | `n.s.common.pidfile`                            | 1.1.0    |
| Super CSV Core                               | `net.sf.supercsv.super-csv`                     | 2.4.0    |
| unbescape                                    | `org.unbescape`                                 | 1.1.6    |


## 5.0.0 - 2025-06-24

The complete list of plugins included is:

| Name                                         | ID                                              | Vers     |
|:---------------------------------------------|:------------------------------------------------|:---------|
| %bundleName                                  | `org.eclipse.equinox.cm`                        | 1.5.300  |
| %systemBundle                                | `org.eclipse.osgi`                              | 3.23.100 |
| Angus Activation Registries                  | `angus-activation`                              | 2.0.2    |
| AOP Alliance API                             | `com.springsource.org.aopalliance`              | 1.0.0    |
| Apache Commons BeanUtils                     | `org.apache.commons.commons-beanutils`          | 1.9.4    |
| Apache Commons Codec                         | `org.apache.commons.commons-codec`              | 1.18.0   |
| Apache Commons Collections                   | `org.apache.commons.collections`                | 3.2.2    |
| Apache Commons IO                            | `org.apache.commons.commons-io`                 | 2.19.0   |
| Apache Felix EventAdmin                      | `org.apache.felix.eventadmin`                   | 1.6.4    |
| Apache Felix File Install                    | `org.apache.felix.fileinstall`                  | 3.5.4    |
| Apache Felix Utils                           | `n.s.external.org.apache.felix.utils`           | 1.8.4    |
| Apache ServiceMix :: Bundles :: aspectj      | `org.apache.servicemix.bundles.aspectj`         | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api    | `org.apache.servicemix.bundles.javax-cache-api` | 1.1.1    |
| Apache ServiceMix :: Bundles :: javax.inject | `org.apache.servicemix.bundles.javax-inject`    | 1.0.0    |
| attoparser                                   | `org.attoparser`                                | 2.0.7    |
| Commons Digester                             | `org.apache.commons.digester`                   | 2.1      |
| Eclipse Compiler for Java(TM)                | `org.eclipse.jdt.core.compiler.batch`           | 3.41.0   |
| HikariCP                                     | `com.zaxxer.HikariCP`                           | 6.3.0    |
| Jakarta Activation API                       | `jakarta.activation-api`                        | 2.1.3    |
| Jakarta Annotations API                      | `jakarta.annotation-api`                        | 3.0.0    |
| Jakarta Authentication                       | `jakarta.security.auth.message-api`             | 3.1.0    |
| Jakarta Expression Language API              | `jakarta.el-api`                                | 6.0.1    |
| Jakarta Mail API                             | `jakarta.mail-api`                              | 2.1.3    |
| Jakarta Servlet                              | `jakarta.servlet-api`                           | 6.1.0    |
| Jakarta Validation API                       | `jakarta.validation.jakarta.validation-api`     | 3.1.1    |
| Jakarta WebSocket - Client API               | `jakarta.websocket-client-api`                  | 2.2.0    |
| Jakarta WebSocket - Server API               | `jakarta.websocket-api`                         | 2.2.0    |
| Joda-Time                                    | `joda-time`                                     | 2.13.0   |
| org.osgi:org.osgi.namespace.implementation   | `org.osgi.namespace.implementation`             | 1.0.0    |
| org.osgi:org.osgi.service.cm                 | `org.osgi.service.cm`                           | 1.6.1    |
| org.osgi:org.osgi.service.coordinator        | `org.osgi.service.coordinator`                  | 1.0.2    |
| org.osgi:org.osgi.service.event              | `org.osgi.service.event`                        | 1.4.1    |
| org.osgi:org.osgi.service.jdbc               | `org.osgi.service.jdbc`                         | 1.1.0    |
| org.osgi:org.osgi.util.function              | `org.osgi.util.function`                        | 1.2.0    |
| org.osgi:org.osgi.util.promise               | `org.osgi.util.promise`                         | 1.3.0    |
| org.osgi:osgi.annotation                     | `osgi.annotation`                               | 8.1.0    |
| SolarNetwork Pidfile                         | `n.s.common.pidfile`                            | 1.1.0    |
| Super CSV Core                               | `net.sf.supercsv.super-csv`                     | 2.4.0    |
| unbescape                                    | `org.unbescape`                                 | 1.1.6    |
