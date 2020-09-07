ARCH = all
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
NAME = sn-armbian
PATHS = usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Armbian SolarNode support' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a $(ARCH) \
	--force \
	-d 'systemd (>= 232)' \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_$(ARCH).deb
