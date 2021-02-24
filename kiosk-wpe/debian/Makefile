NAME = sn-kiosk-wpe
VERSION = 1.0.1-1
PATHS = etc usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarKiosk3 support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'cog' \
	-d 'weston' \
	--conflicts 'sn-kiosk' \
	--replaces 'sn-kiosk' \
	--conflicts 'sn-kiosk3' \
	--replaces 'sn-kiosk3' \
	--provides 'solarkiosk' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
