# SolarNode RXTX support

The `sn-rxtx` package attempts to create a symlink in the `/usr/share/solarnode/app/ext` directory
to the `RXTXcomm.jar` file included with the `librxtx-java` package. The `librxtx` native libraries
are installed in /usr/lib/jni, which must be avaialable on the Java runtime system property
`java.library.path`.
