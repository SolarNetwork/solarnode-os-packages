# SolarNode Application - DB - H2 (non-volatile storage)

This package provides a H2 database for SolarNode that lives directly on non-volatile storage,
instead of the default method of storing the database in RAM. This can be useful on devices with
smaller amounts of RAM, at the expense of more wear to the persistent storage medium.

:warning: **NOTE** that a custom `/etc/solarnode/env.conf` is required for this integration. This
package will modify that file if it exists, or create it if not.
