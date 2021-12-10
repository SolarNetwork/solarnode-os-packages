DIST = 
VERSION = 2.0.0-1$(if $(DIST),+$(DIST),)
NAME = solarnode-bluetooth-setup
PATHS = etc lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'SolarNode Bluetooth setup' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'systemd (>= 232)' \
	-d 'bluetooth' \
	-d 'bluez-tools' \
	-d 'python3' \
	-d 'python3-dbus' \
	-d 'python3-gi' \
	--deb-no-default-config-files \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
