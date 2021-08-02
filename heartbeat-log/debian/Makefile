NAME = sn-heartbeat-log
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = lib

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarNode heartbeat log' \
	--license 'Apache License 2.0' \
	-f \
	-d 'systemd (>= 241)' \
	-d 'logrotate' \
	--deb-no-default-config-files \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
