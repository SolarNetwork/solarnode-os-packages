ARCH = all
NAME = sn-i2c
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
	--description 'SolarNode I2C support' \
	--license 'Apache License 2.0' \
	-f \
	--after-install $(NAME).postinst \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_$(ARCH).deb
