# SolarNode Configuration - Setup Live

This directory contains support for building the `solarnode-config-setup-live`
package. This provides configuration that supports the live datum streaming
feature of the [STOMP setup
server](https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.setup.stomp)
(the `/setup/datum/live` destination).

While a client is subscribed to live datum, the STOMP setup server enables the
`setup-live` [operational
mode](https://solarnetwork.github.io/solarnode-handbook/users/op-modes/). This
package configures an **Operational Mode Data Source Scheduler** (the
`net.solarnetwork.node.datum.opmode.invoker` component) named `Setup Live` that,
while that mode is active, polls **every** data source once a second **without**
persisting the resulting datum.

## Side effects

The non-persisted datum polled while `setup-live` is active still pass through
the datum queue, so datum filters and SolarFlux see them. See the STOMP setup
server README for details. In particular SolarFlux will publish them at up to
once a second per source unless a SolarFlux filter limits that.

| Placeholder    | Description                                                                         |
| :------------- | :---------------------------------------------------------------------------------- |
| `INSTANCE_ID`  | The SolarFlux component instance ID, e.g. `1`.                                      |
| `FILTER_INDEX` | The 0-based index of the new filter, i.e. the number of filters already configured. |
| `FILTER_COUNT` | The total number of filters including the new one, i.e. `FILTER_INDEX + 1`.         |

Because auto-settings are only added, a `filtersCount` that is already set on a
node will **not** be changed, and the new filter would then be ignored. Check
the existing SolarFlux configuration on the target nodes before using it.

## Building

Run `make` to build the package.
