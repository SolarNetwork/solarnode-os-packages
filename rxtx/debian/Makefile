NAME = sn-rxtx
DIST = 
VERSION = 1.1.1-1$(if $(DIST),+$(DIST),)
PATHS = lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--description 'SolarNode RXTX support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'librxtx-java (>= 2.2pre2)' \
	--after-install $(NAME).postinst \
	--after-remove $(NAME).postrm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm sn-rxtx_$(VERSION)_all.deb
