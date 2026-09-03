#!/usr/bin/env sh
set -e

cat <<- EOF
	===============================================================================
	This will reset this SolarNode, DISCARDING any custom SolarNode settings in
	this running OS, and copy the OS to the built-in eMMC. This will completely
	REPLACE the OS on the eMMC.

	If you choose to proceed, when finally prompted if you would like reboot the
	device, choose NO and instead run the following command so you can safely
	remove this media before power-cycling the device:

		sudo shutdown -h now
	===============================================================================

EOF

read -r -p "Are you sure you want to continue? (y/n) " REPLY
if [ "$REPLY" = 'y' -o "$REPLY" = 'Y' ]]; then
	# reset SolarNode to clean state
	sn-reset -a && sudo systemctl stop solarnode

	# Remove SSH host keys
	sudo rm -f /etc/ssh/ssh_host*

	# Ensure /boot/grub directory exists
	[ -d /boot/grub ] || sudo mkdir /boot/grub

	# Clear any local state
	rm -rf /var/lib/misc/*

	# Copy image to eMMC
	sudo cl-deploy
fi
