# SolarNode Configuration - Setup Live

This directory contains support for building the `solarnode-config-setup-live`
package. This provides configuration that supports the live datum streaming
feature of the [STOMP setup
server](https://github.com/SolarNetwork/solarnetwork-node/tree/develop/net.solarnetwork.node.setup.stomp)
(the `/setup/datum/live` destination).

While a client is subscribed to live datum, the STOMP setup server enables the
`setup-live` [operational
mode](https://solarnetwork.github.io/solarnode-handbook/users/op-modes/). This
package configures an **Operational Mode Data Source Scheduler** named
`Setup Live` that polls every data source once a second, without persisting the
datum, while that mode is active.

## Side effects

The non-persisted datum polled while `setup-live` is active still pass through
the datum queue, so datum filters and SolarFlux see them. SolarFlux publishes
them up to once a second per source unless a SolarFlux filter limits that.

The `example/0201-solarnode-config-setup-live-flux.csv` file is a SolarFlux
filter that limits publishing to once a minute while `setup-live` is active.
Replace these placeholders before copying it to
`/etc/solarnode/auto-settings.d`:

| Placeholder    | Description                                               |
| :------------- | :-------------------------------------------------------- |
| `INSTANCE_ID`  | The SolarFlux component instance ID, such as `1`.         |
| `FILTER_INDEX` | Index of the new filter (the number of existing filters). |
| `FILTER_COUNT` | `FILTER_INDEX + 1`.                                       |

Auto-settings are only added, so an existing `filtersCount` is not changed and
the new filter is ignored. Check the node's SolarFlux configuration first.

## Building

Run `make` to build the package.
