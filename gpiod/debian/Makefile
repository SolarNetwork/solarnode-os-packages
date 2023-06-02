ARCH = all
NAME = sn-gpiod
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = lib

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a $(ARCH) \
	--description 'SolarNode gpiod support' \
	--license 'Apache License 2.0' \
	-d gpiod \
	-f \
	--after-install $(NAME).postinst \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_$(ARCH).deb
