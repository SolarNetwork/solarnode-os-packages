# SolarNode mbpoll reset package

This directory contains support for building the `sn-mbpoll-reset` package. This package
provides an hourly timer service that writes a fixed values to a Modbus device on a schedule.
This can be used, for example, to reset a min/max tracking function on a device.

# Configuration

A `sn-mbpoll-reset@default` timer and associated service unit will be configured when this
package is installed. The `/etc/solarnode/sn-mbpoll-reset@default.conf` file holds
the configuration:

```
MODBUS_ADDR=10.32.2.5
MODBUS_UNIT=1
MODBUS_OPTS="-t 4 -W"
MODBUS_REGISTER=1001
MODBUS_DATA="0x00FF 0x03FF"
```
Modify those values to adjust what date is set.

| Parameter | Description |
|:----------|:------------|
| `MODBUS_ADDR` | The IP address of the Modbus device to set the date on. |
| `MODBUS_UNIT` | The Modbus unit ID of the device. |
| `MODBUS_OPTS` | The Modbus operation flags to execute, for example `-t 4 -W` for "write holding registers". |
| `MODBUS_REGISTER` | The starting register to write to (0-based). |
| `MODBUS_DATA` | The number data values to write, separated by spaces. |

## Schedule

The `sn-mbpoll-reset@.timer` unit by default runs hourly. You can customize that with a drop-in
unit, for example to change the `@default` service to run every 15 minutes, create
`/etc/systemd/system/sn-mbpoll-reset@default.timer.d/override.conf` with content like this:

```
[Timer]
OnCalendar=*-*-* *:0,15,30,45:0
```

After creating the drop-in, be sure to run

```sh
sudo systemctl daemon-reload
```

to apply the change.

## View timer info

You can view the timer schedule with `sudo systemctl list-timers` like:

```sh
systemctl list-timers sn-mbpoll-reset@default
NEXT                         LEFT       LAST                         PASSED       UNIT                          ACTIVATES
Tue 2024-10-01 14:15:00 NZDT 10min left Tue 2024-10-01 14:02:05 NZDT 1min 57s ago sn-mbpoll-reset@default.timer sn-mbpoll-reset@default.service
```

## View reset messages

Use `sudo systemctl status` to view the last executed reset status, for example:

```sh
sudo systemctl status sn-mbpoll-reset@default

● sn-mbpoll-reset@default.service - Reset Modubs
     Loaded: loaded (/lib/systemd/system/sn-mbpoll-reset@.service; static)
     Active: failed (Result: exit-code) since Tue 2024-10-01 14:02:06 NZDT; 3min 29s ago
TriggeredBy: ● sn-mbpoll-reset@default.timer
    Process: 2866 ExecStart=/bin/sh -c /usr/bin/mbpoll -q -0 -1 -t 4:hex -a ${MODBUS_UNIT} -r ${MODBUS_REGISTER} ${MODBUS_ADDR} ${MODBUS_DATA} (code=exited, status=1/FAILUR>
   Main PID: 2866 (code=exited, status=1/FAILURE)
        CPU: 14ms

Oct 01 14:02:05 solarnode systemd[1]: Starting Reset Modubs...
Oct 01 14:02:06 solarnode sh[2867]: /usr/bin/mbpoll: Connection failed: Operation now in progress.
Oct 01 14:02:06 solarnode systemd[1]: sn-mbpoll-reset@default.service: Main process exited, code=exited, status=1/FAILURE
Oct 01 14:02:06 solarnode systemd[1]: sn-mbpoll-reset@default.service: Failed with result 'exit-code'.
Oct 01 14:02:06 solarnode systemd[1]: Failed to start Reset Modubs.
```

# Build requirements

Packaging is done via `make` with [fpm][fpm]. To get started:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

# Building

Run `make` to build the package, which will produce `sn-mbpoll-reset_VERSION_all.deb` in
this directory.

[fpm]: https://github.com/jordansissel/fpm
