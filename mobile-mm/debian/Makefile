DIST = 
VERSION = 1.0.1-1$(if $(DIST),+$(DIST),)
NAME = sn-mobile-mm
PATHS = lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'SolarNode Mobile ModemManager modem/GPS support' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'iproute2' \
	-d 'systemd (>= 247)' \
	-d 'modemmanager' \
	-d 'socat' \
	--conflicts 'sn-pi-sixfab-3g-shield-vodafone' \
	--conflicts 'sn-pi-mobile-shield-quectel' \
	--replaces 'sn-pi-mobile-shield-quectel' \
	--conflicts 'sn-pi-mobile-shield-usb' \
	--replaces 'sn-pi-mobile-shield-usb' \
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
