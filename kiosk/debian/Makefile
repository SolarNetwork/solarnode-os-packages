NAME = sn-kiosk
VERSION = 1.0.4-1
PATHS = etc lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarKiosk support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'xserver-xorg' \
	-d 'x11-xserver-utils' \
	-d 'xinit' \
	-d 'gir1.2-webkit2-4.0' \
	-d 'python-gi' \
	-d 'python-xdg' \
	-d 'openbox' \
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
