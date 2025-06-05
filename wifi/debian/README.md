# WiFi Debian package

This directory contains packaging scripts used to create the `sn-wifi` Debian package, which
provides a way to manage a WiFi network connection.

## WiFi configuration

This package will ask for the following WiFi settings when configured:

 1. Country code, e.g. `NZ`
 2. WiFi network name (SSID)
 3. WiFi network password
 
You can run 

```sh
sudo dpkg-reconfigure sn-wifi
```

to manage these settings. The configuration for the connection is located in
`/etc/wpa_supplicant/wpa_supplicant-wlan0.conf`. A `sn-wifi-conf@wlan0.service` uses that
configuration to connect to the WiFi network using the first-available WiFi device, `wlan0`.

## Auto Access Point

For initial setup of a the WiFi settings on a SolarNode it can be helpful for SolarNode to create
its own WiFi network, as an access point. The `sn-wifi-autoap@wlan0` service can be used for this.
When enabled, it will monitor the WiFi network status, and when the WiFi connection fails for
any reason it will enable a `SolarNode` WiFi network using a gateway IP address of `192.168.16.1`.
Thus when the SolarNode access point is enabled, you can connect to that network from your own
device and reach the node GUI at `http://192.168.16.1/` or the shell via `ssh solar@192.168.16.1`.

This service is not enabled by default. To enable it, run the following:

```sh
sudo systemctl enable --now sn-wifi-autoap@wlan0
```

Once enabled, if SolarNode cannot connect to the configured WiFi network, it will create its own
`SolarNode` network. By default the password for this network is `solarnode`.

### Configuring the Access Point settings

The `/etc/wpa_supplicant/wpa_supplicant-wlan0.conf` file contains the `SolarNode` WiFi network
settings. By default the configuration looks like this (the defaults can be also be viewed in the
`/usr/share/solarnode/example/wpa_supplicant-wlan0.conf` file):

```
country=NZ
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
ap_scan=1

### sn-wifi-cfg-start
network={
	priority=10
	ssid="ssid"
	psk="passphrase"
}
### sn-wifi-cfg-end

### access-point mode
network={
    ssid="SolarNode"
    mode=2
    key_mgmt=WPA-PSK
    psk="solarnode"
    frequency=2462
}
```

You can configure your own `ssid` and `psk` and any other settings for the access point in the 
second `network={}` block shown.

The gateway IP used by the network is configured in the `/etc/systemd/network/21-wlan-ap.network`
file. The default configuration looks like this (the defaults can also be viewed in the
`/usr/share/solarnode/example/21-wlan-ap.network` file):

```
[Match]
Name=wlan0

[Network]
DHCPServer=yes
Address=192.168.16.1/24
```

You could change the `Address` to any other valid local network, for example.

## Startup WiFi bootstrap

This package provides a `sn-wifi-bootconf.service` that will look for a `/boot/wpa_supplicant.conf`
file when the system boots. If found, it will move that file as-is to
`/etc/wpa_supplicant/wpa_supplicant-wlan0.conf`. In the case of a Raspberry Pi, the `/boot`
partition of its OS SD card can be easily mounted on most computers, where you can easily create the
file. Then, when the Pi boots up the WiFi credentials will be applied and the Pi will be able to
connect to the network.

## WiFi configuration changes

The `sn-wifi-conf@wlan0.path` and `sn-wifi-conf@wlan0.service` units monitor the 
`/etc/wpa_supplicant/wpa_supplicant-wlan0.conf` path and handle two situations:

 1. The `sn-wifi-conf@wlan0.service` is enabled so when the system boots, if the WiFi config
    file exists, the `wpa_supplicant@wlan0` service will be started.
 2. The `sn-wifi-conf@wlan0.path` is enabled so if the WiFi config file changes, it will restart
    the `wpa_supplicant@wlan0` service.

The `wpa_supplicant@wlan0.service` unit is _not enabled_ so that the `sn-wifi-conf@wlan0` units
can manage it instead.

# Packaging

This section describes how the `sn-wifi` package is created.

## Packaging requirements

Packaging done via [fpm][fpm]. To install `fpm`:

```sh
sudo apt-get install ruby ruby-dev build-essential
sudo gem install --no-document fpm
```

## Create package

Use `fpm` to package the service via `make`. This package is architecture independent:

```sh
make
```

To specify a specific distribution target, add the `DIST` parameter, like

```sh
make DIST=buster
```

[fpm]: https://github.com/jordansissel/fpm
[dropBrute]: https://github.com/robzr/dropBrute