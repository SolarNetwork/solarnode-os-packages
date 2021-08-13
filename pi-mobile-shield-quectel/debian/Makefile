DIST = 
VERSION = 1.0.0-2$(if $(DIST),+$(DIST),)
NAME = sn-pi-mobile-shield-quectel
PATHS = etc lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Raspberry Pi Mobile Shield (Quectel) modem/GPS support' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'systemd (>= 232)' \
	-d 'ppp (>= 2.4.7)' \
	-d 'gpsd (>= 3.16)' \
	--conflicts 'sn-pi-sixfab-3g-shield-vodafone' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	--after-remove $(NAME).postrm \
	--provides 'solarnode-gps' \
	--provides 'solarnode-modem' \
	--deb-no-default-config-files \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
