# SolarNode Base Platform change log - 2.x series

This document details the history of changes of the `solarnode-base` package 2.x series, from newest to
oldest. See [CHANGELOG](./CHANGELOG.md) for the newest releases.

## 2.1.0 - 2023-10-29

The following plugins have changed from the previous release:

| Name                                          | ID                                                          | Old Vers | New Vers |
|:----------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Bean Validation API                           | `jakarta.validation.jakarta.validation-api`                 | -        | 2.0.1    |

The complete list of plugins included is:

| Name                                          | ID                                                          | Vers     |
|:----------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                   | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                   | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                 | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                              | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle          | `org.apache.httpcomponents.httpclient`                      | 4.5.14   |
| Apache Apache HttpCore OSGi bundle            | `org.apache.httpcomponents.httpcore`                        | 4.4.16   |
| Apache Commons BeanUtils                      | `org.apache.commons.commons-beanutils`                      | 1.9.4    |
| Apache Commons Codec                          | `org.apache.commons.commons-codec`                          | 1.15.0   |
| Apache Commons Collections                    | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                     | `org.apache.commons.commons-fileupload`                     | 1.4.0    |
| Apache Commons IO                             | `org.apache.commons.commons-io`                             | 2.11.0   |
| Apache Derby DataSourceFactory                | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                     | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                       | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                     | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                     | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                     | `org.apache.felix.gogo.runtime`                             | 1.1.6    |
| Apache Felix Gogo Shell                       | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                            | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                     | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                      | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j API                              | `org.apache.logging.log4j.api`                              | 2.19.0   |
| Apache Log4j Core                             | `org.apache.logging.log4j.core`                             | 2.19.0   |
| Apache Log4j SLF4J Binding                    | `org.apache.logging.log4j.slf4j-impl`                       | 2.19.0   |
| Apache ServiceMix :: Bundles :: aspectj       | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api     | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby         | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject  | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime  | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache Standard Taglib Implementation         | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API      | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                             | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                        | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                     | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                 | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JNI                             | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                            | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                       | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                       | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                          | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                   | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                     | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                     | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                   | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                   | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                        | `org.apache.tiles-autotag-core-runtime`                     | 1.2.0    |
| AWS SDK (Mini)                                | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                        | `bcpkix`                                                    | 1.47     |
| bcprov                                        | `bcprov`                                                    | 1.47     |
| Bean Validation API                           | `jakarta.validation.jakarta.validation-api`                 | 2.0.1    |
| Common Utility Code                           | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                              | `org.apache.commons.digester`                               | 2.1      |
| ehcache                                       | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                     | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                           | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                             | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                   | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                               | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                           | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                    | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                   | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 3.0.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 3.0.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 3.0.0    |
| HikariCP                                      | `com.zaxxer.HikariCP`                                       | 4.0.3    |
| IO Utility Code                               | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jakarta Annotations API                       | `jakarta.annotation-api`                                    | 1.3.5    |
| Jakarta JAXB API Default Runtime              | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                          | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                           | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                 | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                         | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers        | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                          | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                      | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                              | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar        | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                      | `javax.servlet.jsp-api`                                     | 2.3.0    |
| jcl-over-slf4j                                | `jcl.over.slf4j`                                            | 1.7.36   |
| jna                                           | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                     | `joda-time`                                                 | 2.12.2   |
| Mathematical Utility Code                     | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| OSGi LogService implemented over SLF4J        | `org.slf4j.osgi-over-slf4j`                                 | 1.7.36   |
| OSGi Manifest Utility Code                    | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                          | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                             | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                     | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                               | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                      | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                     | `slf4j.api`                                                 | 1.7.36   |
| smiley-http-proxy-servlet                     | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                  | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 3.0.0    |
| SolarNetwork Pidfile                          | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                   | `org.apache.tiles.api`                                      | 3.0.8    |
| Tiles - Core Library                          | `org.apache.tiles.core`                                     | 3.0.8    |
| Tiles - EL support                            | `org.apache.tiles.el`                                       | 3.0.8    |
| Tiles - JSP support                           | `org.apache.tiles.jsp`                                      | 3.0.8    |
| Tiles - Servlet support                       | `org.apache.tiles.servlet`                                  | 3.0.8    |
| Tiles - Template Technologies Support         | `org.apache.tiles-template`                                 | 3.0.8    |
| Tiles request - API                           | `org.apache.tiles-request-api`                              | 1.0.7    |
| Tiles Request - JSP support                   | `org.apache.tiles-request-jsp`                              | 1.0.7    |
| Tiles request - Servlet support               | `org.apache.tiles-request-servlet`                          | 1.0.7    |
| Tyrus Websocket Client (JDK)                  | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Websocket API                                 | `javax.websocket`                                           | 1.1.0    |


## 2.0.0 - 2023-03-08

This major release updates the base platform to use Spring Framework 5.3 (from 4.3), with Gemini
Blueprint 3.0 (from 2.1).

The following plugins have changed from the previous release:

| Name                                          | ID                                                          | Old Vers | New Vers |
|:----------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    | 3.0.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    | 3.0.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    | 3.0.0    |
| Medic API                                     | `org.eclipse.virgo.medic`                                   | 3.7.2    | -        |
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    | 3.0.0    |
| Virgo Web Spring DM Support                   | `org.eclipse.virgo.web.dm`                                  | 3.7.2    | -        |


The complete list of plugins included is:

| Name                                          | ID                                                          | Vers     |
|:----------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                   | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                   | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                 | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                              | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle          | `org.apache.httpcomponents.httpclient`                      | 4.5.14   |
| Apache Apache HttpCore OSGi bundle            | `org.apache.httpcomponents.httpcore`                        | 4.4.16   |
| Apache Commons BeanUtils                      | `org.apache.commons.commons-beanutils`                      | 1.9.4    |
| Apache Commons Codec                          | `org.apache.commons.commons-codec`                          | 1.15.0   |
| Apache Commons Collections                    | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                     | `org.apache.commons.commons-fileupload`                     | 1.4.0    |
| Apache Commons IO                             | `org.apache.commons.commons-io`                             | 2.11.0   |
| Apache Derby DataSourceFactory                | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                     | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                       | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                     | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                     | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                     | `org.apache.felix.gogo.runtime`                             | 1.1.6    |
| Apache Felix Gogo Shell                       | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                            | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                     | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                      | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j API                              | `org.apache.logging.log4j.api`                              | 2.19.0   |
| Apache Log4j Core                             | `org.apache.logging.log4j.core`                             | 2.19.0   |
| Apache Log4j SLF4J Binding                    | `org.apache.logging.log4j.slf4j-impl`                       | 2.19.0   |
| Apache ServiceMix :: Bundles :: aspectj       | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: cache-api     | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby         | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject  | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime  | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache Standard Taglib Implementation         | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API      | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                             | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                        | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                     | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                 | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JNI                             | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                            | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                       | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                       | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                          | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                   | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                     | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                     | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                   | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                   | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                        | `org.apache.tiles-autotag-core-runtime`                     | 1.2.0    |
| AWS SDK (Mini)                                | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                        | `bcpkix`                                                    | 1.47     |
| bcprov                                        | `bcprov`                                                    | 1.47     |
| Common Utility Code                           | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                              | `org.apache.commons.digester`                               | 2.1      |
| ehcache                                       | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                     | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                           | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                             | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                   | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                               | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                           | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                    | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                   | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 3.0.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 3.0.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 3.0.0    |
| HikariCP                                      | `com.zaxxer.HikariCP`                                       | 4.0.3    |
| IO Utility Code                               | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jakarta Annotations API                       | `jakarta.annotation-api`                                    | 1.3.5    |
| Jakarta JAXB API Default Runtime              | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                          | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                           | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                 | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                         | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers        | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                          | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                      | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                              | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar        | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                      | `javax.servlet.jsp-api`                                     | 2.3.0    |
| jcl-over-slf4j                                | `jcl.over.slf4j`                                            | 1.7.36   |
| jna                                           | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                     | `joda-time`                                                 | 2.12.2   |
| Mathematical Utility Code                     | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| OSGi LogService implemented over SLF4J        | `org.slf4j.osgi-over-slf4j`                                 | 1.7.36   |
| OSGi Manifest Utility Code                    | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                          | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                             | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                     | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                               | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                      | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                     | `slf4j.api`                                                 | 1.7.36   |
| smiley-http-proxy-servlet                     | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                  | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 3.0.0    |
| SolarNetwork Pidfile                          | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                   | `org.apache.tiles.api`                                      | 3.0.8    |
| Tiles - Core Library                          | `org.apache.tiles.core`                                     | 3.0.8    |
| Tiles - EL support                            | `org.apache.tiles.el`                                       | 3.0.8    |
| Tiles - JSP support                           | `org.apache.tiles.jsp`                                      | 3.0.8    |
| Tiles - Servlet support                       | `org.apache.tiles.servlet`                                  | 3.0.8    |
| Tiles - Template Technologies Support         | `org.apache.tiles-template`                                 | 3.0.8    |
| Tiles request - API                           | `org.apache.tiles-request-api`                              | 1.0.7    |
| Tiles Request - JSP support                   | `org.apache.tiles-request-jsp`                              | 1.0.7    |
| Tiles request - Servlet support               | `org.apache.tiles-request-servlet`                          | 1.0.7    |
| Tyrus Websocket Client (JDK)                  | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Websocket API                                 | `javax.websocket`                                           | 1.1.0    |

# Older releases

 * [2.x series](./CHANGELOG-2.x.md)
 * [1.x series](./CHANGELOG-1.x.md)

[sn-base-jackson]: ../../solarnode-base-jackson/debian/
[sn-base-netty]: ../../solarnode-base-netty/debian/
[sn-base-spring]: ../../solarnode-base-spring/debian/
[sn-base-spring-security]: ../../solarnode-base-spring-security/debian/
