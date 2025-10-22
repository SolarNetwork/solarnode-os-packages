DIST = 
NAME = sn-seeedstudio-r1000-support
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = boot lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--description 'Seeed Studio R1000 support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'systemd (>= 230)' \
	-d 'dkms' \
	-d 'linux-headers-rpi-v8' \
	--conflicts 'sn-pi-usb-support' \
	--replaces 'sn-pi-usb-support' \
	--before-install $(NAME).preinst \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
