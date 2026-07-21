NAME = solarnode-config-ping
VERSION = 1.0.0-1
PATHS = etc

deb : prep
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		--description 'SolarNode configuration - Ping' \
		-a all \
		--maintainer 'packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--license 'Apache License 2.0' \
		-f \
		-d 'solarnode-app-core (>= 4.8)' \
		-d 'solarnode-app-control-core (>= 2.0)' \
		$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
