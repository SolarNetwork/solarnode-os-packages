# SolarNode Base Platform change log

## 3.0.0 - 2023-11-25

This is a major update that updates the web runtime from Gemini Web with Tomcat 8.5 to Pax Web with
Tomcat 9.0. Most SolarNode plugins should be unaffected by this change, but ones that rely on the
platform servlet infrastructure might need updating as this has changed from Servlet 3.1 to 4.0.
Many of the web related dependencies have been updated as a result.

The following plugins have changed from the previous release:

| Name                                            | ID                                                          | Old Vers | New Vers |
|:------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| %Bundle-Name.0                                  | `javax.xml.soap`                                            | 1.3.0    | - |
| %pluginName                                     | `javax.transaction`                                         | 1.1.0    | - |
| Apache EL                                       | `org.apache.el`                                             | 8.5.56   | - |
| Apache Jasper JSP support                       | `org.apache.jasper`                                         | 8.5.56   | - |
| Apache Java Util Logging                        | `org.apache.juli`                                           | 8.5.56   | - |
| Apache Tomcat API                               | `org.apache.tomcat.api`                                     | 8.5.56   | - |
| Apache Tomcat Catalina                          | `org.apache.catalina`                                       | 8.5.56   | - |
| Apache Tomcat Catalina HA                       | `org.apache.catalina.ha`                                    | 8.5.56   | - |
| Apache Tomcat Catalina Tribes                   | `org.apache.catalina.tribes`                                | 8.5.56   | - |
| Apache Tomcat JNI                               | `org.apache.tomcat.jni`                                     | 8.5.56   | - |
| Apache Tomcat Util                              | `org.apache.tomcat.util`                                    | 8.5.56   | - |
| Apache Tomcat Util Scan                         | `org.apache.tomcat.util.scan`                               | 8.5.56   | - |
| Apache Tomcat Websocket                         | `org.apache.tomcat.websocket`                               | 8.5.56   | - |
| Apache Tomcat/Coyote                            | `org.apache.coyote`                                         | 8.5.56   | - |
| Expression Language                             | `javax.el`                                                  | 3.0.0    | - |
| Gemini Web Core                                 | `org.eclipse.gemini.web.core`                               | 3.0.6    | - |
| Gemini Web Extender                             | `org.eclipse.gemini.web.extender`                           | 3.0.6    | - |
| Gemini Web JASPIC Fragment                      | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    | - |
| Gemini Web Tomcat Bootstrap                     | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    | - |
| Jakarta Annotations API                         | `jakarta.annotation-api`                                    | -        | 1.3.5    |
| Jakarta Authentication                          | `javax.security.auth.message-api`                           | -        | 1.1.3    |
| Jakarta Expression Language 3.0 API             | `javax.el-api`                                              | -        | 3.0.3    |
| Jakarta JAXB API Default Runtime                | `n.s.external.jakarta-xml-bind-api-default-runtime`         | -        | 2.3.2    |
| Jakarta Mail API jar                            | `jakarta.mail-api`                                          | -        | 1.6.7    |
| Jakarta Server Pages API                        | `javax.servlet.jsp-api`                                     | -        | 2.3.6    |
| Jakarta Servlet                                 | `jakarta.servlet-api`                                       | -        | 4.0.0    |
| Jakarta WebSocket - Server API                  | `javax.websocket-api`                                       | -        | 1.1.2    |
| Java Activation API                             | `com.springsource.javax.activation`                         | 1.1.1    | - |
| Java API for JavaServer Pages                   | `javax.servlet.jsp`                                         | 2.3.0    | - |
| Java API for Servlets                           | `javax.servlet`                                             | 3.1.0    | - |
| Java Authentication SPI for Containers          | `javax.security.auth.message`                               | 1.1.0    | - |
| Java Manifest Parser                            | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    | - |
| Java Persistence API 2.1                        | `javax.persistence`                                         | 2.1.0    | - |
| Java Servlet API                                | `javax.servlet-api`                                         | 3.1.0    | - |
| Java Manifest Parser                            | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    | - |
| Mathematical Utility Code                       | `org.eclipse.virgo.util.math`                               | 3.7.2    | - |
| OPS4J Pax Web - API                             | `org.ops4j.pax.web.pax-web-api`                             | -        | 9.0.13   |
| OPS4J Pax Web - Extender - WAR                  | `org.ops4j.pax.web.pax-web-extender-war`                    | -        | 9.0.13   |
| OPS4J Pax Web - JSP Support                     | `org.ops4j.pax.web.pax-web-jsp`                             | -        | 9.0.13   |
| OPS4J Pax Web - Runtime                         | `org.ops4j.pax.web.pax-web-runtime`                         | -        | 9.0.13   |
| OPS4J Pax Web - Service SPI (internal)          | `org.ops4j.pax.web.pax-web-spi`                             | -        | 9.0.13   |
| OPS4J Pax Web - Tomcat                          | `org.ops4j.pax.web.pax-web-tomcat`                          | -        | 9.0.13   |
| OPS4J Pax Web - Tomcat Common                   | `org.ops4j.pax.web.pax-web-tomcat-common`                   | -        | 9.0.13   |
| OPS4J Pax Web - Tomcat WebSocket implementation | `org.ops4j.pax.web.pax-web-tomcat-websocket`                | -        | 9.0.13   |
| Tomcat Juli Logging to SLF4J                    | `n.s.external.tomcat-juli-slf4j`                            | -        | 9.0.54   |
| Websocket API                                   | `javax.websocket`                                           | 1.1.0    | - |

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
| Apache Derby DataSourceFactory                  | `n.s.external.org.apache.derby`                             | 1.3.0    |
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
| Apache ServiceMix :: Bundles :: derby           | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
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
| ehcache                                         | `net.sf.ehcache`                                            | 2.7.0    |
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
| Java Servlet API                                | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                  | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar          | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                        | `javax.servlet.jsp-api`                                     | 2.3.0    |
| jcl-over-slf4j                                  | `jcl.over.slf4j`                                            | 1.7.36   |
| jna                                             | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                       | `joda-time`                                                 | 2.12.2   |
| OPS4J Pax Web - API                             | `org.ops4j.pax.web.pax-web-api`                             | 9.0.13   |
| OPS4J Pax Web - Extender - WAR                  | `org.ops4j.pax.web.pax-web-extender-war`                    | 9.0.13   |
| OPS4J Pax Web - JSP Support                     | `org.ops4j.pax.web.pax-web-jsp`                             | 9.0.13   |
| OPS4J Pax Web - Runtime                         | `org.ops4j.pax.web.pax-web-runtime`                         | 9.0.13   |
| OPS4J Pax Web - Service SPI (internal)          | `org.ops4j.pax.web.pax-web-spi`                             | 9.0.13   |
| OPS4J Pax Web - Tomcat                          | `org.ops4j.pax.web.pax-web-tomcat`                          | 9.0.13   |
| OPS4J Pax Web - Tomcat Common                   | `org.ops4j.pax.web.pax-web-tomcat-common`                   | 9.0.13   |
| OPS4J Pax Web - Tomcat WebSocket implementation | `org.ops4j.pax.web.pax-web-tomcat-websocket`                | 9.0.13   |
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


## 1.16.2 - 2023-02-26

This is a minor bugfix release in the supporting scripts, the plugin versions are identical to the
previous release.

 * The `solarnode.service` program command now includes
   `-Dlog4j2.contextSelector=org.apache.logging.log4j.core.selector.BasicContextSelector` to
   support dynamic logging configuration.


## 1.16.1 - 2023-01-18

This is a minor bugfix release in the supporting scripts, the plugin versions are identical to the
previous release.

 * The `sn-pid` bash function has been added, to print out the PID of the running SolarNode service.
 * The `sn-log-path` now uses the `SOLARNODE_LOGDIR` environment value defined in either
   `/etc/solarnode/env.conf` or `/usr/lib/systemd/system/solarnode.service`.


## 1.16.0 - 2022-12-24

The following plugins have changed from the previous release:

| Name                                          | ID                                                          | Old Vers | New Vers |
|:----------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Apache HttpClient OSGi bundle          | `org.apache.httpcomponents.httpclient`                      | 4.5.13   | 4.5.14 |
| Apache Apache HttpCore OSGi bundle            | `org.apache.httpcomponents.httpcore`                        | 4.4.15   | 4.4.16 |
| Apache Commons BeanUtils                      | `org.apache.commons.beanutils`                              | 1.9.3    | 1.9.4  |
| Apache Commons Codec                          | `org.apache.commons.codec`                                  | 1.11.0   | 1.15.0 |
| Apache Commons FileUpload                     | `org.apache.commons.fileupload`                             | 1.3.3    | 1.4.0  |
| Apache Commons IO                             | `org.apache.commons.io`                                     | 2.6.0    | 2.11.0 |
| Apache Log4j API                              | `org.apache.logging.log4j.api`                              | 2.17.2   | 2.19.0 |
| Apache Log4j Core                             | `org.apache.logging.log4j.core`                             | 2.17.2   | 2.19.0 |
| Apache Log4j SLF4J Binding                    | `org.apache.logging.log4j.slf4j-impl`                       | 2.17.2   | 2.19.0 |
| Autotag - Core runtime                        | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    | 1.2.0  |
| Commons Digester                              | `org.apache.commons.digester`                               | 2.0      | 2.1    |
| HikariCP                                      | `com.zaxxer.HikariCP`                                       | 3.4.5    | 4.0.3  |
| jcl-over-slf4j                                | `jcl.over.slf4j`                                            | 1.7.26   | 1.7.36 |
| Joda-Time                                     | `joda-time`                                                 | 2.9.7    | 2.12.2 |
| OSGi LogService implemented over SLF4J        | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   | 1.7.36 |
| slf4j-api                                     | `slf4j.api`                                                 | 1.7.26   | 1.7.36 |
| Tiles - API                                   | `org.apache.tiles.api`                                      | 3.0.5    | 3.0.8  |
| Tiles - Core Library                          | `org.apache.tiles.core`                                     | 3.0.5    | 3.0.8  |
| Tiles - EL support                            | `org.apache.tiles.el`                                       | 3.0.5    | 3.0.8  |
| Tiles - JSP support                           | `org.apache.tiles.jsp`                                      | 3.0.5    | 3.0.8  |
| Tiles - Servlet support                       | `org.apache.tiles.servlet`                                  | 3.0.5    | 3.0.8  |
| Tiles - Template Technologies Support         | `org.apache.tiles-template`                                 | 3.0.5    | 3.0.8  |
| Tiles request - API                           | `org.apache.tiles-request-api`                              | 1.0.6    | 1.0.7  |
| Tiles Request - JSP support                   | `org.apache.tiles-request-jsp`                              | 1.0.6    | 1.0.7  |
| Tiles request - Servlet support               | `org.apache.tiles-request-servlet`                          | 1.0.6    | 1.0.7  |


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
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
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
| Medic API                                     | `org.eclipse.virgo.medic`                                   | 3.7.2    |
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
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
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
| Virgo Web Spring DM Support                   | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                 | `javax.websocket`                                           | 1.1.0    |


## 1.15.1 - 2022-10-07

This is a minor bugfix release in the supporting scripts, the plugin versions are identical to the
previous release.


## 1.15.0 - 2022-05-27

This release changes the core logging framework from Apache log4j to log4j2. The way logging is
configured has changed to use the log4j XML configuration format, loaded via a
`/etc/solarnode/log4j2.xml` file. That file is not part of this package, but the installer script
will create a default version if it does not exist.

The following plugins have changed from the previous release:

| Name                                          | ID                                                          | Old Vers | New Vers |
|:----------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Log4j                                  | `log4j`                                                     | 1.2.17   | -        |
| Apache Log4j API                              | `org.apache.logging.log4j.api`                              | -        | 2.17.2   |
| Apache Log4j Core                             | `org.apache.logging.log4j.core`                             | -        | 2.17.2   |
| Apache Log4j SLF4J Binding                    | `org.apache.logging.log4j.slf4j-impl`                       | -        | 2.17.2   |
| Jakarta Annotations API                       | `jakarta.annotation-api`                                    | -        | 1.3.5    |
| javax.annotation API                          | `javax.annotation-api`                                      | 1.3.2    | -        |
| slf4j-log4j12                                 | `slf4j.log4j12`                                             | 1.7.26   | -        |

The complete list of plugins included is:

| Name                                          | ID                                                          | Vers     |
|:----------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                   | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                   | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                 | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                              | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle          | `org.apache.httpcomponents.httpclient`                      | 4.5.13   |
| Apache Apache HttpCore OSGi bundle            | `org.apache.httpcomponents.httpcore`                        | 4.4.15   |
| Apache Commons BeanUtils                      | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                          | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                    | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                     | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                             | `org.apache.commons.io`                                     | 2.6.0    |
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
| Apache Log4j API                              | `org.apache.logging.log4j.api`                              | 2.17.2   |
| Apache Log4j Core                             | `org.apache.logging.log4j.core`                             | 2.17.2   |
| Apache Log4j SLF4J Binding                    | `org.apache.logging.log4j.slf4j-impl`                       | 2.17.2   |
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
| Autotag - Core runtime                        | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                        | `bcpkix`                                                    | 1.47     |
| bcprov                                        | `bcprov`                                                    | 1.47     |
| Common Utility Code                           | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                              | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                       | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                     | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                           | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                             | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                   | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                               | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                           | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                    | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                   | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| HikariCP                                      | `com.zaxxer.HikariCP`                                       | 3.4.5    |
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
| jcl-over-slf4j                                | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                           | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                     | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                     | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                     | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| OSGi LogService implemented over SLF4J        | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                    | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                          | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                             | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                     | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                               | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                      | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                     | `slf4j.api`                                                 | 1.7.26   |
| smiley-http-proxy-servlet                     | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                  | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                          | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                   | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                          | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                            | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                           | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                       | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support         | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                           | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                   | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support               | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                  | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                   | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                 | `javax.websocket`                                           | 1.1.0    |


## 1.13.0 - 2022-04-13

This release splits the package into several smaller packages to allow for easier maintenance. See:

 * [solarnode-base-jackson][sn-base-jackson]
 * [solarnode-base-netty][sn-base-netty]
 * [solarnode-base-spring][sn-base-spring]
 * [solarnode-base-spring-security][sn-base-spring-security]

The following plugins have changed from the previous release:

| Name                                                    | ID                                                          | Old Vers | New Vers |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   | 4.5.13   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   | 4.4.15   |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    | 1.1.6    |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |  |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    | [moved][sn-base-spring-security] |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    | [moved][sn-base-spring-security] |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    | [moved][sn-base-spring-security] |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    | [moved][sn-base-spring-security] |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    | [moved][sn-base-spring-security] |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   | [moved][sn-base-spring] |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   | [moved][sn-base-spring] |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.12.3   | [moved][sn-base-jackson] |
| Jackson datatype: JSR310                                | `com.fasterxml.jackson.datatype.jackson-datatype-jsr310`    | 2.12.3   | [moved][sn-base-jackson] |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.12.3   | [moved][sn-base-jackson] |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.12.3   | [moved][sn-base-jackson] |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.12.3   | [moved][sn-base-jackson] |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.63   | [moved][sn-base-netty] |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.63   | [moved][sn-base-netty] |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.63   | [moved][sn-base-netty] |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.63   | [moved][sn-base-netty] |
| Netty/Codec/Stomp                                       | `io.netty.codec-stomp`                                      | 4.1.63   | [moved][sn-base-netty] |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.63   | [moved][sn-base-netty] |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.63   | [moved][sn-base-netty] |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.63   | [moved][sn-base-netty] |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.63   | [moved][sn-base-netty] |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |  |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    | 1.1.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    | [moved][sn-base-spring-security] |

The complete list of plugins included is:

| Name                                          | ID                                                          | Vers     |
|:----------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                   | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                   | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                 | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                              | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle          | `org.apache.httpcomponents.httpclient`                      | 4.5.13   |
| Apache Apache HttpCore OSGi bundle            | `org.apache.httpcomponents.httpcore`                        | 4.4.15   |
| Apache Commons BeanUtils                      | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                          | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                    | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                     | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                             | `org.apache.commons.io`                                     | 2.6.0    |
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
| Apache Log4j                                  | `log4j`                                                     | 1.2.17   |
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
| Autotag - Core runtime                        | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                        | `bcpkix`                                                    | 1.47     |
| bcprov                                        | `bcprov`                                                    | 1.47     |
| Common Utility Code                           | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                              | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                       | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                     | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                           | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                             | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                   | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                               | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                           | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                    | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                   | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                         | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                     | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                           | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| HikariCP                                      | `com.zaxxer.HikariCP`                                       | 3.4.5    |
| IO Utility Code                               | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
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
| javax.annotation API                          | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                           | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                     | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                     | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                     | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| OSGi LogService implemented over SLF4J        | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                    | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                          | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                             | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                     | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                               | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                      | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| slf4j-api                                     | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                 | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                     | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                  | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                          | `n.s.common.pidfile`                                        | 1.1.0    |
| Super CSV Core                                | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                   | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                          | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                            | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                           | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                       | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support         | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                           | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                   | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support               | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                  | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                   | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                 | `javax.websocket`                                           | 1.1.0    |


## 1.12.0 - 2021-11-04

The following plugins have changed from the previous release:

| Name                                                    | ID                                                          | Old Vers | New Vers |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Netty/Codec/Stomp                                       | `io.netty.codec-stomp`                                      |          | 4.1.63   |

The complete list of plugins included is:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| HikariCP                                                | `com.zaxxer.HikariCP`                                       | 3.4.5    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.12.3   |
| Jackson datatype: JSR310                                | `com.fasterxml.jackson.datatype.jackson-datatype-jsr310`    | 2.12.3   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.12.3   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.12.3   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.12.3   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.63   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.63   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.63   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.63   |
| Netty/Codec/Stomp                                       | `io.netty.codec-stomp`                                      | 4.1.63   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.63   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.63   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.63   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.63   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.11.1 - 2021-09-02

* Increase the default memory allocation to the SolarNode process.

There are no plugin changes from the previous release.

## 1.11.0 - 2021-06-14

* Update connection pool from Tomcat JDBC to HikariCP.

The following plugins have changed from the previous release:

| Name                                                    | ID                                                          | Old Vers | New Vers |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Apache Tomcat JDBC Connection Pool                      | `org.apache.tomcat.jdbc`                                    | 8.5.11   |          |
| HikariCP                                                | `com.zaxxer.HikariCP`                                       |          | 3.4.5    |

The complete list of plugins included is:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| HikariCP                                                | `com.zaxxer.HikariCP`                                       | 3.4.5    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.12.3   |
| Jackson datatype: JSR310                                | `com.fasterxml.jackson.datatype.jackson-datatype-jsr310`    | 2.12.3   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.12.3   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.12.3   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.12.3   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.63   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.63   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.63   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.63   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.63   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.63   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.63   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.63   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.10.0 - 2021-06-09

* Update JSON infrastructure to include support for `java.time` module.

The following plugins have changed from the previous release:

| Name                                                    | ID                                                          | Old Vers | New Vers |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|:---------|
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.10.1   | 2.12.3   |
| Jackson datatype: JSR310                                | `com.fasterxml.jackson.datatype.jackson-datatype-jsr310`    |          | 2.12.3   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.10.1   | 2.12.3   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.10.1   | 2.12.3   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.10.1   | 2.12.3   |

The complete list of plugins included is:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JDBC Connection Pool                      | `org.apache.tomcat.jdbc`                                    | 8.5.11   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.12.3   |
| Jackson datatype: JSR310                                | `com.fasterxml.jackson.datatype.jackson-datatype-jsr310`    | 2.12.3   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.12.3   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.12.3   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.12.3   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.63   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.63   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.63   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.63   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.63   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.63   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.63   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.63   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.9.0 - 2021-05-03

* Update MQTT infrastructure to support MQTT 5

Includes the following bundles:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JDBC Connection Pool                      | `org.apache.tomcat.jdbc`                                    | 8.5.11   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.10.1   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.10.1   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.10.1   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.10.1   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.63   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.63   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.63   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.63   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.63   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.63   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.63   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.63   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.8.1 - 2021-02-25

* Fix to Debian remove script to work in systemd container.
* Update Felix Gogo to version 1.1.4.

Includes the following bundles:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.4    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.4    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JDBC Connection Pool                      | `org.apache.tomcat.jdbc`                                    | 8.5.11   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.10.1   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.10.1   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.10.1   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.10.1   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.43   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.43   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.43   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.43   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.43   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.43   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.43   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.43   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.8.0 - 2020-09-08

 * Update to Gemini Web 3.0.6 (Apache Tomcat 8.5.56)

Includes the following bundles:

| Name                                                    | ID                                                          | Vers     |
|:--------------------------------------------------------|:------------------------------------------------------------|:---------|
| %Bundle-Name.0                                          | `javax.xml.soap`                                            | 1.3.0    |
| %bundleName                                             | `org.eclipse.equinox.console`                               | 1.3.300  |
| %pluginName                                             | `javax.transaction`                                         | 1.1.0    |
| %systemBundle                                           | `org.eclipse.osgi`                                          | 3.14.0   |
| AOP Alliance API                                        | `com.springsource.org.aopalliance`                          | 1.0.0    |
| Apache Apache HttpClient OSGi bundle                    | `org.apache.httpcomponents.httpclient`                      | 4.5.10   |
| Apache Apache HttpCore OSGi bundle                      | `org.apache.httpcomponents.httpcore`                        | 4.4.12   |
| Apache Commons BeanUtils                                | `org.apache.commons.beanutils`                              | 1.9.3    |
| Apache Commons Codec                                    | `org.apache.commons.codec`                                  | 1.11.0   |
| Apache Commons Collections                              | `org.apache.commons.collections`                            | 3.2.2    |
| Apache Commons FileUpload                               | `org.apache.commons.fileupload`                             | 1.3.3    |
| Apache Commons IO                                       | `org.apache.commons.io`                                     | 2.6.0    |
| Apache Derby DataSourceFactory                          | `n.s.external.org.apache.derby`                             | 1.3.0    |
| Apache EL                                               | `org.apache.el`                                             | 8.5.56   |
| Apache Felix Bundle Repository                          | `org.apache.felix.bundlerepository`                         | 1.6.6    |
| Apache Felix EventAdmin                                 | `org.apache.felix.eventadmin`                               | 1.5.0    |
| Apache Felix File Install                               | `org.apache.felix.fileinstall`                              | 3.5.4    |
| Apache Felix Gogo Command                               | `org.apache.felix.gogo.command`                             | 1.1.0    |
| Apache Felix Gogo Runtime                               | `org.apache.felix.gogo.runtime`                             | 1.1.2    |
| Apache Felix Gogo Shell                                 | `org.apache.felix.gogo.shell`                               | 1.1.2    |
| Apache Felix Utils                                      | `n.s.external.org.apache.felix.utils`                       | 1.8.4    |
| Apache Jasper JSP support                               | `org.apache.jasper`                                         | 8.5.56   |
| Apache Java Util Logging                                | `org.apache.juli`                                           | 8.5.56   |
| Apache Log4j                                            | `log4j`                                                     | 1.2.17   |
| Apache ServiceMix :: Bundles :: aspectj                 | `org.apache.servicemix.bundles.aspectj`                     | 1.8.10   |
| Apache ServiceMix :: Bundles :: c3p0                    | `org.apache.servicemix.bundles.c3p0`                        | 0.9.5    |
| Apache ServiceMix :: Bundles :: cache-api               | `org.apache.servicemix.bundles.javax-cache-api`             | 1.0.0    |
| Apache ServiceMix :: Bundles :: derby                   | `org.apache.servicemix.bundles.derby`                       | 10.12.1  |
| Apache ServiceMix :: Bundles :: javax.inject            | `org.apache.servicemix.bundles.javax-inject`                | 1.0.0    |
| Apache ServiceMix :: Bundles :: jaxb-runtime            | `org.apache.servicemix.bundles.jaxb-runtime`                | 2.3.2    |
| Apache ServiceMix :: Bundles :: spring-aop              | `org.apache.servicemix.bundles.spring-aop`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-beans            | `org.apache.servicemix.bundles.spring-beans`                | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context          | `org.apache.servicemix.bundles.spring-context`              | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-context-support  | `org.apache.servicemix.bundles.spring-context-support`      | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-core             | `org.apache.servicemix.bundles.spring-core`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-expression       | `org.apache.servicemix.bundles.spring-expression`           | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-jdbc             | `org.apache.servicemix.bundles.spring-jdbc`                 | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-messaging        | `org.apache.servicemix.bundles.spring-messaging`            | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-security-acl     | `org.apache.servicemix.bundles.spring-security-acl`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-config  | `org.apache.servicemix.bundles.spring-security-config`      | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-core    | `org.apache.servicemix.bundles.spring-security-core`        | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-taglibs | `org.apache.servicemix.bundles.spring-security-taglibs`     | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-security-web     | `org.apache.servicemix.bundles.spring-security-web`         | 4.2.4    |
| Apache ServiceMix :: Bundles :: spring-tx               | `org.apache.servicemix.bundles.spring-tx`                   | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-web              | `org.apache.servicemix.bundles.spring-web`                  | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-webmvc           | `org.apache.servicemix.bundles.spring-webmvc`               | 4.3.25   |
| Apache ServiceMix :: Bundles :: spring-websocket        | `org.apache.servicemix.bundles.spring-websocket`            | 4.3.25   |
| Apache Standard Taglib Implementation                   | `org.apache.taglibs.standard-impl`                          | 1.2.1    |
| Apache Standard Taglib Specification API                | `org.apache.taglibs.taglibs-standard-spec`                  | 1.2.1    |
| Apache Tomcat API                                       | `org.apache.tomcat.api`                                     | 8.5.56   |
| Apache Tomcat Catalina                                  | `org.apache.catalina`                                       | 8.5.56   |
| Apache Tomcat Catalina HA                               | `org.apache.catalina.ha`                                    | 8.5.56   |
| Apache Tomcat Catalina Tribes                           | `org.apache.catalina.tribes`                                | 8.5.56   |
| Apache Tomcat JDBC Connection Pool                      | `org.apache.tomcat.jdbc`                                    | 8.5.11   |
| Apache Tomcat JNI                                       | `org.apache.tomcat.jni`                                     | 8.5.56   |
| Apache Tomcat Util                                      | `org.apache.tomcat.util`                                    | 8.5.56   |
| Apache Tomcat Util Scan                                 | `org.apache.tomcat.util.scan`                               | 8.5.56   |
| Apache Tomcat Websocket                                 | `org.apache.tomcat.websocket`                               | 8.5.56   |
| Apache Tomcat/Coyote                                    | `org.apache.coyote`                                         | 8.5.56   |
| Apache Xalan XML Serializer                             | `com.springsource.org.apache.xml.serializer`                | 2.7.1    |
| Apache Xalan XSLT Support                               | `com.springsource.org.apache.xalan`                         | 2.7.1    |
| Apache Xerces XML Support                               | `com.springsource.org.apache.xerces`                        | 2.9.1    |
| Apache XML Commons Resolver                             | `com.springsource.org.apache.xml.resolver`                  | 1.2.0    |
| Apache XML Commons XML-APIs                             | `com.springsource.org.apache.xmlcommons`                    | 1.3.4    |
| Autotag - Core runtime                                  | `org.apache.tiles-autotag-core-runtime`                     | 1.1.0    |
| AWS SDK (Mini)                                          | `n.s.external.aws-sdk-mini`                                 | 1.11.688 |
| bcpkix                                                  | `bcpkix`                                                    | 1.47     |
| bcprov                                                  | `bcprov`                                                    | 1.47     |
| Common Utility Code                                     | `org.eclipse.virgo.util.common`                             | 3.7.2    |
| Commons Digester                                        | `org.apache.commons.digester`                               | 2.0      |
| ehcache                                                 | `net.sf.ehcache`                                            | 2.7.0    |
| ehcache 3                                               | `org.ehcache.ehcache`                                       | 3.5.2    |
| Expression Language                                     | `javax.el`                                                  | 3.0.0    |
| Extended StAX API                                       | `org.jvnet.staxex.stax-ex`                                  | 1.8.2    |
| fastinfoset                                             | `com.sun.xml.fastinfoset.FastInfoset`                       | 1.2.17   |
| Gemini Web Core                                         | `org.eclipse.gemini.web.core`                               | 3.0.6    |
| Gemini Web Extender                                     | `org.eclipse.gemini.web.extender`                           | 3.0.6    |
| Gemini Web JASPIC Fragment                              | `org.eclipse.gemini.web.jaspic.fragment`                    | 3.0.6    |
| Gemini Web Tomcat Bootstrap                             | `org.eclipse.gemini.web.tomcat`                             | 3.0.6    |
| gemini-blueprint-core                                   | `org.eclipse.gemini.blueprint.core`                         | 2.1.0    |
| gemini-blueprint-extender                               | `org.eclipse.gemini.blueprint.extender`                     | 2.1.0    |
| gemini-blueprint-io                                     | `org.eclipse.gemini.blueprint.io`                           | 2.1.0    |
| IO Utility Code                                         | `org.eclipse.virgo.util.io`                                 | 3.7.2    |
| Jackson dataformat: CBOR                                | `com.fasterxml.jackson.dataformat.jackson-dataformat-cbor`  | 2.10.1   |
| Jackson-annotations                                     | `com.fasterxml.jackson.core.jackson-annotations`            | 2.10.1   |
| Jackson-core                                            | `com.fasterxml.jackson.core.jackson-core`                   | 2.10.1   |
| jackson-databind                                        | `com.fasterxml.jackson.core.jackson-databind`               | 2.10.1   |
| Jakarta JAXB API Default Runtime                        | `n.s.external.jakarta-xml-bind-api-default-runtime`         | 2.3.2    |
| jakarta.xml.bind-api                                    | `jakarta.xml.bind-api`                                      | 2.3.2    |
| Java Activation API                                     | `com.springsource.javax.activation`                         | 1.1.1    |
| Java API for JavaServer Pages                           | `javax.servlet.jsp`                                         | 2.3.0    |
| Java API for Servlets                                   | `javax.servlet`                                             | 3.1.0    |
| Java Authentication SPI for Containers                  | `javax.security.auth.message`                               | 1.1.0    |
| Java Manifest Parser                                    | `org.eclipse.virgo.util.parser.manifest`                    | 3.7.2    |
| Java Persistence API 2.1                                | `javax.persistence`                                         | 2.1.0    |
| Java Servlet API                                        | `javax.servlet-api`                                         | 3.1.0    |
| JavaBeans Activation Framework                          | `com.sun.activation.jakarta.activation`                     | 1.2.1    |
| JavaBeans Activation Framework API jar                  | `jakarta.activation-api`                                    | 1.2.1    |
| JavaServer Pages(TM) API                                | `javax.servlet.jsp-api`                                     | 2.3.0    |
| javax.annotation API                                    | `javax.annotation-api`                                      | 1.3.2    |
| jcl-over-slf4j                                          | `jcl.over.slf4j`                                            | 1.7.26   |
| jna                                                     | `com.sun.jna`                                               | 5.6.0    |
| Joda-Time                                               | `joda-time`                                                 | 2.9.7    |
| Mathematical Utility Code                               | `org.eclipse.virgo.util.math`                               | 3.7.2    |
| Medic API                                               | `org.eclipse.virgo.medic`                                   | 3.7.2    |
| Netty/Buffer                                            | `io.netty.buffer`                                           | 4.1.43   |
| Netty/Codec                                             | `io.netty.codec`                                            | 4.1.43   |
| Netty/Codec/HTTP                                        | `io.netty.codec-http`                                       | 4.1.43   |
| Netty/Codec/MQTT                                        | `io.netty.codec-mqtt`                                       | 4.1.43   |
| Netty/Common                                            | `io.netty.common`                                           | 4.1.43   |
| Netty/Handler                                           | `io.netty.handler`                                          | 4.1.43   |
| Netty/Resolver                                          | `io.netty.resolver`                                         | 4.1.43   |
| Netty/Transport                                         | `io.netty.transport`                                        | 4.1.43   |
| OSGi LogService implemented over SLF4J                  | `org.slf4j.osgi-over-slf4j`                                 | 1.7.26   |
| OSGi Manifest Utility Code                              | `org.eclipse.virgo.util.osgi.manifest`                      | 3.7.2    |
| OSGi OBR Service API                                    | `org.osgi.service.obr`                                      | 1        |
| OSGi Utility Code                                       | `org.eclipse.virgo.util.osgi`                               | 3.7.2    |
| osgi.cmpn                                               | `osgi.cmpn`                                                 | 5.0.0    |
| osgi.enterprise                                         | `osgi.enterprise`                                           | 5.0.0    |
| pack:tag                                                | `n.s.external.net.sf.packtag`                               | 3.13.1   |
| quartz                                                  | `org.quartz-scheduler.quartz`                               | 2.2.3    |
| slf4j-api                                               | `slf4j.api`                                                 | 1.7.26   |
| slf4j-log4j12                                           | `slf4j.log4j12`                                             | 1.7.26   |
| smiley-http-proxy-servlet                               | `org.mitre.dsmiley.http-proxy-servlet`                      | 1.11     |
| software.amazon.ion:ion-java                            | `software.amazon.ion.java`                                  | 1.0.2    |
| SolarNetwork Gemini Blueprint Extender Config           | `n.s.external.org.eclipse.gemini.blueprint.extender.config` | 2.0.1    |
| SolarNetwork Pidfile                                    | `n.s.common.pidfile`                                        | 1.0.0    |
| Spring Security Messaging                               | `n.s.external.spring-security-messaging`                    | 4.2.4    |
| Super CSV Core                                          | `net.sf.supercsv.super-csv`                                 | 2.4.0    |
| Tiles - API                                             | `org.apache.tiles.api`                                      | 3.0.5    |
| Tiles - Core Library                                    | `org.apache.tiles.core`                                     | 3.0.5    |
| Tiles - EL support                                      | `org.apache.tiles.el`                                       | 3.0.5    |
| Tiles - JSP support                                     | `org.apache.tiles.jsp`                                      | 3.0.5    |
| Tiles - Servlet support                                 | `org.apache.tiles.servlet`                                  | 3.0.5    |
| Tiles - Template Technologies Support                   | `org.apache.tiles-template`                                 | 3.0.5    |
| Tiles request - API                                     | `org.apache.tiles-request-api`                              | 1.0.6    |
| Tiles Request - JSP support                             | `org.apache.tiles-request-jsp`                              | 1.0.6    |
| Tiles request - Servlet support                         | `org.apache.tiles-request-servlet`                          | 1.0.6    |
| Tyrus Websocket Client (JDK)                            | `n.s.external.tyrus-standalone-client-jdk`                  | 1.13.0   |
| Virgo Web Spring DM Support                             | `org.eclipse.virgo.web.dm`                                  | 3.7.2    |
| Websocket API                                           | `javax.websocket`                                           | 1.1.0    |


## 1.7.0 - 2020-08-31

 * Add JNA support to support easier direct hardware access.

## 1.6.0 - 2020-06-24

 * Add support for factory reset to remove SolarNode configuration and data.

## 1.5.2 - 2020-01-24

 * Remove net.solarnetwork.node.core.cfg from base package, so that
   customer-specific packages can provide instead.

## 1.5.1 - 2019-12-19

 * Add /usr/lib to SolarNode lib path, to be able to pick up libraries
   like yasdi via yasdi4j.

## 1.5.0 - 2019-12-17

 * Update Jackson JSON to 2.10.1 to pick up CBOR bug fix.

## 1.4.0 - 2019-12-06

 * Replace Eclipse Paho with Netty MQTT for better connection resiliency.
 * Update to Netty v4.1.43.
 * Add javax.inject v1.3.
 * Add JAXB 2.3.2 runtime to work with Java 11.
 * Add javax.activation 1.2.1 to work with Java 11.
 * Replace AWS SDK JAR with custom "slim" version to reduce size of package.

## 1.3.1 - 2019-10-21

 * Add support for /usr/share/solarnode/app/ext directory to replace the
   jre/lib/ext directory removed in Java 11. This fixes a problem with
   loading the RXTX libary in Java 11.

## 1.3.0 - 2019-10-21

 * Update Apache HTTP client to v4.5.10.
 * Update AWS SDK to v1.11.651 for Java 11 fixes.
 * Update Eclipse Paho to v1.2.2.

## 1.2.2 - 2019-09-18

 * Make link from ~solar/bin to /var/lib/solarnode/bin.
 * Update to Spring 4.3.25 for bug fixes in working with Java 11.

## 1.2.1 - 2019-09-06

 * Fix SolarNode startup script to look for bundle hooks in proper directory.

## 1.2.0 - 2019-08-26

 * Add utility functions to add/remove bundles from Equinox's config.init
   osgi.bundles property, to allow other packages to easily maintain custom
   additions to startup.

## 1.1.1 - 2019-07-23

 * Allow bash shell hooks via /usr/share/solarnode/bash-utils.d directory.

## 1.1.0 - 2019-07-16

 * Update Equinox to v3.14 for Java 11 support
 * Update Equinox CM to v1.4
 * Update Equinox Console to v1.3
 * Update Felix Event Admin to v1.5
 * Update Felix Gogo Shell to v1.1

## v20190325

 * Update Gemini Blueprint to v2.1.0
 * Update Gemini Web to v3.0.4 (Tomcat 8.5.35)
 * Update Spring Framework to v4.3.23
 * Update Spring Security to v4.2.4
 * Update Jackson JSON to v2.9.9

## v20180613

 * Add Eclipse Paho v1.2 for MQTT support

## v20180517

 * Remove duplicate Commons Codec JAR (v1.9)
 * Update SuperCSV to 2.4

## v20180409

 * Update Jackson JSON
 * Add JCache (javax.cache) support via Ehcache
 * Update slf4j
 * Update Apache Commons BeanUtils, Codec, Collections, and IO

## v20170628

 * Update Tomcat JDBC
 * Configure SolarSSH OS support
 * Update pack:tag to support SolarSSH

## v20170306

**Note** if the Tyrus websocket server added in this release was deployed as
a normal application artifact (e.g. in `app/main`), that copy should be removed
after upgrading to this version so there aren't two copies loaded.

 * Update to Gemini Web 3.0 (Servlet 3.1)
 * Update to Spring 4.2.9
 * Add Tyrus websocket server

[sn-base-jackson]: ../../solarnode-base-jackson/debian/
[sn-base-netty]: ../../solarnode-base-netty/debian/
[sn-base-spring]: ../../solarnode-base-spring/debian/
[sn-base-spring-security]: ../../solarnode-base-spring-security/debian/
