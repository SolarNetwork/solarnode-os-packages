DIST = 
NAME = sn-iotdin-imx8p-support
VERSION = 1.1.0-1$(if $(DIST),+$(DIST),)
PATHS = lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--description 'IoT DIN iMX8p support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'systemd (>= 230)' \
	--after-install $(NAME).postinst \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
