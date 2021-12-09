DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
NAME = sn-pi-bluetooth
PATHS = lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Raspberry Pi Bluetooth support' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'systemd (>= 232)' \
	-d 'bluetooth' \
	-d 'bluez (>= 5.55)' \
	-d 'bluez-firmware' \
	--conflicts 'pi-bluetooth' \
	--replaces 'pi-bluetooth' \
	--deb-no-default-config-files \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
