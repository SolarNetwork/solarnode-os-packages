NAME = sn-mbpoll-heartbeat
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = lib usr

deb : prep
	fpm \
		--input-type dir \
		--output-type deb \
		--name $(NAME) \
		--version $(VERSION) \
		--architecture all \
		--maintainer 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode Modbus heartbeat' \
		--license 'Apache License 2.0' \
		--depends 'sn-mbpoll | mbpoll' \
		--depends 'systemd (>= 241)' \
		--after-install $(NAME).postinst \
		--before-remove $(NAME).prerm \
		--force \
		$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
