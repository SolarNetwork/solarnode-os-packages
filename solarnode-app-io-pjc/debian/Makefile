NAME = solarnode-app-io-pjc
VERSION = 1.1.0-1
PATHS = usr

pkg : 
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode I/O - PureJavaComm' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-app-core (>= 1.17)' \
		-d 'solarnode-base-purejavacomm' \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb
