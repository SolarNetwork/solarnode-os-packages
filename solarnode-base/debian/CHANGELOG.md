# SolarNode Base Platform change log

## 4.2.0 - 2024-06-13

The Xalan/Xerces dependencies have been moved to the new [solarnode-base-xalan](../../solarnode-base-xalan/debian) package.

The following plugins have changed from the previous release:

| Name                                            | ID                                                          | Old Vers | New Vers |
|:------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Xalan XML Serializer                     | `com.springsource.org.apache.xml.serializer`                | 2.7.1    | [moved](../../solarnode-base-xalan/debian) |
| Apache Xalan XSLT Support                       | `com.springsource.org.apache.xalan`                         | 2.7.1    | [moved](../../solarnode-base-xalan/debian) |
| Apache Xerces XML Support                       | `com.springsource.org.apache.xerces`                        | 2.9.1    | [moved](../../solarnode-base-xalan/debian) |
| Apache XML Commons Resolver                     | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    | [moved](../../solarnode-base-xalan/debian) |
| Apache XML Commons XML-APIs                     | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    | [moved](../../solarnode-base-xalan/debian) |

The complete list of plugins included is:

| Name                                            | ID                                                          | Vers     |
|:------------------------------------------------|:------------------------------------------------------------|:---------|
| %bundleName                                     | `org.eclipse.equinox.console`                               | 1.3.300  |
| %systemBundle                                   | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle            | `org.apache.httpcomponents.httpclient`                      | 4.5.14   |
| Apache Apache HttpCore OSGi bundle              | `org.apache.httpcomponents.httpcore`                        | 4.4.16   |
| Apache Commons BeanUtils                        | `org.apache.commons.commons-beanutils`                      | 1.9.4    |
| Apache Commons Codec                            | `org.apache.commons.commons-codec`                          | 1.15.0   |
| Apache Commons Collections                      | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                       | `org.apache.commons.commons-fileupload`                     | 1.4.0    |
| Apache Commons IO                               | `org.apache.commons.commons-io`                             | 2.11.0   |
| Apache Felix Bundle Repository                  | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                         | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                       | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                       | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                       | `org.apache.felix.gogo.runtime`                             | 1.1.6    |
| Apache Felix Gogo Shell                         | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                              | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Log4j API                                | `org.apache.logging.log4j.api`                              | 2.19.0   |
| Apache Log4j Core                               | `org.apache.logging.log4j.core`                             | 2.19.0   |
| Apache Log4j SLF4J Binding                      | `org.apache.logging.log4j.slf4j-impl`                       | 2.19.0   |
| Apache ServiceMix :: Bundles :: aspectj         | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api       | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: javax.inject    | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime    | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache Standard Taglib Implementation           | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API        | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Autotag - Core runtime                          | `org.apache.tiles-autotag-core-runtime`                     | 1.2.0    |
| AWS SDK (Mini)                                  | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                          | `bcpkix`                                                    | 1.47     |
| bcprov                                          | `bcprov`                                                    | 1.47     |
| Bean Validation API                             | `jakarta.validation.jakarta.validation-api`                 | 2.0.1    |
| Commons Digester                                | `org.apache.commons.digester`                               | 2.1      |
| Eclipse Compiler for Java(TM)                   | `org.eclipse.jdt.core.compiler.batch`                       | 3.32.0   |
| ehcache 3                                       | `org.ehcache.ehcache`                                       | 3.5.2    |
| Extended StAX API                               | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                     | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| gemini-blueprint-core                           | `org.eclipse.gemini.blueprint.core`                         | 3.0.0    |
| gemini-blueprint-extender                       | `org.eclipse.gemini.blueprint.extender`                     | 3.0.0    |
| gemini-blueprint-io                             | `org.eclipse.gemini.blueprint.io`                           | 3.0.0    |
| HikariCP                                        | `com.zaxxer.HikariCP`                                       | 4.0.3    |
| Jakarta Annotations API                         | `jakarta.annotation-api`                                    | 1.3.5    |
| Jakarta Authentication                          | `javax.security.auth.message-api`                           | 1.1.3    |
| Jakarta Expression Language 3.0 API             | `javax.el-api`                                              | 3.0.3    |
| Jakarta JAXB API Default Runtime                | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| Jakarta Mail API jar                            | `jakarta.mail-api`                                          | 1.6.7    |
| Jakarta Server Pages API                        | `javax.servlet.jsp-api`                                     | 2.3.6    |
| Jakarta Servlet                                 | `jakarta.servlet-api`                                       | 4.0.0    |
| Jakarta WebSocket - Server API                  | `javax.websocket-api`                                       | 1.1.2    |
| jakarta.xml.bind-api                            | `jakarta.xml.bind-api`                                      | 2.3.2    |
| JavaBeans Activation Framework                  | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar          | `jakarta.activation-api`                                    | 1.2.1    |
| jcl-over-slf4j                                  | `jcl.over.slf4j`                                            | 1.7.36   |
| jna                                             | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                       | `joda-time`                                                 | 2.12.2   |
| OPS4J Pax Web - API                             | `org.ops4j.pax.web.pax-web-api`                             | 9.0.14   |
| OPS4J Pax Web - Extender - WAR                  | `org.ops4j.pax.web.pax-web-extender-war`                    | 9.0.14   |
| OPS4J Pax Web - JSP Support                     | `org.ops4j.pax.web.pax-web-jsp`                             | 9.0.14   |
| OPS4J Pax Web - Runtime                         | `org.ops4j.pax.web.pax-web-runtime`                         | 9.0.14   |
| OPS4J Pax Web - Service SPI (internal)          | `org.ops4j.pax.web.pax-web-spi`                             | 9.0.14   |
| OPS4J Pax Web - Tomcat                          | `org.ops4j.pax.web.pax-web-tomcat`                          | 9.0.14   |
| OPS4J Pax Web - Tomcat Common                   | `org.ops4j.pax.web.pax-web-tomcat-common`                   | 9.0.14   |
| OPS4J Pax Web - Tomcat WebSocket implementation | `org.ops4j.pax.web.pax-web-tomcat-websocket`                | 9.0.14   |
| OSGi LogService implemented over SLF4J          | `org.slf4j.osgi-over-slf4j`                                 | 1.7.36   |
| OSGi OBR Service API                            | `org.osgi.service.obr`                                      | 1        |
| osgi.cmpn                                       | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                 | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                        | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                       | `slf4j.api`                                                 | 1.7.36   |
| smiley-http-proxy-servlet                       | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                    | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config   | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 3.0.0    |
| SolarNetwork Pidfile                            | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                  | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                     | `org.apache.tiles.api`                                      | 3.0.8    |
| Tiles - Core Library                            | `org.apache.tiles.core`                                     | 3.0.8    |
| Tiles - EL support                              | `org.apache.tiles.el`                                       | 3.0.8    |
| Tiles - JSP support                             | `org.apache.tiles.jsp`                                      | 3.0.8    |
| Tiles - Servlet support                         | `org.apache.tiles.servlet`                                  | 3.0.8    |
| Tiles - Template Technologies Support           | `org.apache.tiles-template`                                 | 3.0.8    |
| Tiles request - API                             | `org.apache.tiles-request-api`                              | 1.0.7    |
| Tiles Request - JSP support                     | `org.apache.tiles-request-jsp`                              | 1.0.7    |
| Tiles request - Servlet support                 | `org.apache.tiles-request-servlet`                          | 1.0.7    |
| Tomcat Juli Logging to SLF4J                    | `n.s.external.tomcat-juli-slf4j`                            | 9.0.54   |
| Tyrus Websocket Client (JDK)                    | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |


## 4.1.2 - 2024-06-13

This version removes an unused dependency.

The following plugins have changed from the previous release:

| Name                                            | ID                                                          | Old Vers | New Vers |
|:------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| ehcache                                         | `net.sf.ehcache`                                            | 2.7.8    | - |

## 4.1.1 - 2024-06-10

This version introduces a new default logging configuration that includes a settings audit
log persisted by default in the `/var/lib/solarnode/var/log` directory. See the
`/usr/share/solarnode/conf/log4j2-example.xml` to see how to update existing nodes.


## 4.1.0 - 2024-05-17

This version moves the Tomcat error documents from `/var/lib/solarnode/var/weberrors` to
`/var/lib/solarnode/weberrors` so it is not removed when `sn-reset` is invoked. The plugins have
not changed from the previous release.


## 4.0.0 - 2024-04-10

This version splits the Derby database out into the `solarnode-base-derby` package.

The following plugins have changed from the previous release:

| Name                                            | ID                                                          | Old Vers | New Vers |
|:------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Derby DataSourceFactory                  | `n.s.external.org.apache.derby`                             | 1.3.0    | [moved](../../solarnode-base-derby/debian) |
| Apache ServiceMix :: Bundles :: derby           | `org.apache.servicemix.bundles.derby`                       | 10.12.1  | [moved](../../solarnode-base-derby/debian) |

The complete list of plugins included is:

| Name                                            | ID                                                          | Vers     |
|:------------------------------------------------|:------------------------------------------------------------|:---------|
| %bundleName                                     | `org.eclipse.equinox.console`                               | 1.3.300  |
| %systemBundle                                   | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle            | `org.apache.httpcomponents.httpclient`                      | 4.5.14   |
| Apache Apache HttpCore OSGi bundle              | `org.apache.httpcomponents.httpcore`                        | 4.4.16   |
| Apache Commons BeanUtils                        | `org.apache.commons.commons-beanutils`                      | 1.9.4    |
| Apache Commons Codec                            | `org.apache.commons.commons-codec`                          | 1.15.0   |
| Apache Commons Collections                      | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                       | `org.apache.commons.commons-fileupload`                     | 1.4.0    |
| Apache Commons IO                               | `org.apache.commons.commons-io`                             | 2.11.0   |
| Apache Felix Bundle Repository                  | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                         | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                       | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                       | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                       | `org.apache.felix.gogo.runtime`                             | 1.1.6    |
| Apache Felix Gogo Shell                         | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                              | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Log4j API                                | `org.apache.logging.log4j.api`                              | 2.19.0   |
| Apache Log4j Core                               | `org.apache.logging.log4j.core`                             | 2.19.0   |
| Apache Log4j SLF4J Binding                      | `org.apache.logging.log4j.slf4j-impl`                       | 2.19.0   |
| Apache ServiceMix :: Bundles :: aspectj         | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api       | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: javax.inject    | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime    | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache Standard Taglib Implementation           | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API        | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Xalan XML Serializer                     | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                       | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                       | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                     | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                     | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                          | `org.apache.tiles-autotag-core-runtime`                     | 1.2.0    |
| AWS SDK (Mini)                                  | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                          | `bcpkix`                                                    | 1.47     |
| bcprov                                          | `bcprov`                                                    | 1.47     |
| Bean Validation API                             | `jakarta.validation.jakarta.validation-api`                 | 2.0.1    |
| Commons Digester                                | `org.apache.commons.digester`                               | 2.1      |
| Eclipse Compiler for Java(TM)                   | `org.eclipse.jdt.core.compiler.batch`                       | 3.32.0   |
| ehcache                                         | `net.sf.ehcache`                                            | 2.7.8    |
| ehcache 3                                       | `org.ehcache.ehcache`                                       | 3.5.2    |
| Extended StAX API                               | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                     | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| gemini-blueprint-core                           | `org.eclipse.gemini.blueprint.core`                         | 3.0.0    |
| gemini-blueprint-extender                       | `org.eclipse.gemini.blueprint.extender`                     | 3.0.0    |
| gemini-blueprint-io                             | `org.eclipse.gemini.blueprint.io`                           | 3.0.0    |
| HikariCP                                        | `com.zaxxer.HikariCP`                                       | 4.0.3    |
| Jakarta Annotations API                         | `jakarta.annotation-api`                                    | 1.3.5    |
| Jakarta Authentication                          | `javax.security.auth.message-api`                           | 1.1.3    |
| Jakarta Expression Language 3.0 API             | `javax.el-api`                                              | 3.0.3    |
| Jakarta JAXB API Default Runtime                | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| Jakarta Mail API jar                            | `jakarta.mail-api`                                          | 1.6.7    |
| Jakarta Server Pages API                        | `javax.servlet.jsp-api`                                     | 2.3.6    |
| Jakarta Servlet                                 | `jakarta.servlet-api`                                       | 4.0.0    |
| Jakarta WebSocket - Server API                  | `javax.websocket-api`                                       | 1.1.2    |
| jakarta.xml.bind-api                            | `jakarta.xml.bind-api`                                      | 2.3.2    |
| JavaBeans Activation Framework                  | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar          | `jakarta.activation-api`                                    | 1.2.1    |
| jcl-over-slf4j                                  | `jcl.over.slf4j`                                            | 1.7.36   |
| jna                                             | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                       | `joda-time`                                                 | 2.12.2   |
| OPS4J Pax Web - API                             | `org.ops4j.pax.web.pax-web-api`                             | 9.0.14   |
| OPS4J Pax Web - Extender - WAR                  | `org.ops4j.pax.web.pax-web-extender-war`                    | 9.0.14   |
| OPS4J Pax Web - JSP Support                     | `org.ops4j.pax.web.pax-web-jsp`                             | 9.0.14   |
| OPS4J Pax Web - Runtime                         | `org.ops4j.pax.web.pax-web-runtime`                         | 9.0.14   |
| OPS4J Pax Web - Service SPI (internal)          | `org.ops4j.pax.web.pax-web-spi`                             | 9.0.14   |
| OPS4J Pax Web - Tomcat                          | `org.ops4j.pax.web.pax-web-tomcat`                          | 9.0.14   |
| OPS4J Pax Web - Tomcat Common                   | `org.ops4j.pax.web.pax-web-tomcat-common`                   | 9.0.14   |
| OPS4J Pax Web - Tomcat WebSocket implementation | `org.ops4j.pax.web.pax-web-tomcat-websocket`                | 9.0.14   |
| OSGi LogService implemented over SLF4J          | `org.slf4j.osgi-over-slf4j`                                 | 1.7.36   |
| OSGi OBR Service API                            | `org.osgi.service.obr`                                      | 1        |
| osgi.cmpn                                       | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                 | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                        | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                       | `slf4j.api`                                                 | 1.7.36   |
| smiley-http-proxy-servlet                       | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                    | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config   | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 3.0.0    |
| SolarNetwork Pidfile                            | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                  | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                     | `org.apache.tiles.api`                                      | 3.0.8    |
| Tiles - Core Library                            | `org.apache.tiles.core`                                     | 3.0.8    |
| Tiles - EL support                              | `org.apache.tiles.el`                                       | 3.0.8    |
| Tiles - JSP support                             | `org.apache.tiles.jsp`                                      | 3.0.8    |
| Tiles - Servlet support                         | `org.apache.tiles.servlet`                                  | 3.0.8    |
| Tiles - Template Technologies Support           | `org.apache.tiles-template`                                 | 3.0.8    |
| Tiles request - API                             | `org.apache.tiles-request-api`                              | 1.0.7    |
| Tiles Request - JSP support                     | `org.apache.tiles-request-jsp`                              | 1.0.7    |
| Tiles request - Servlet support                 | `org.apache.tiles-request-servlet`                          | 1.0.7    |
| Tomcat Juli Logging to SLF4J                    | `n.s.external.tomcat-juli-slf4j`                            | 9.0.54   |
| Tyrus Websocket Client (JDK)                    | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |


# Older releases

 * [3.x series](./CHANGELOG-3.x.md)
 * [2.x series](./CHANGELOG-2.x.md)
 * [1.x series](./CHANGELOG-1.x.md)

[sn-base-jackson]: ../../solarnode-base-jackson/debian/
[sn-base-netty]: ../../solarnode-base-netty/debian/
[sn-base-spring]: ../../solarnode-base-spring/debian/
[sn-base-spring-security]: ../../solarnode-base-spring-security/debian/
