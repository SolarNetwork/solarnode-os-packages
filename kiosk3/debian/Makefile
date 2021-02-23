NAME = sn-kiosk3
VERSION = 1.0.0-1
PATHS = etc lib usr

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
	-d 'xserver-xorg' \
	-d 'x11-xserver-utils' \
	-d 'xinit' \
	-d 'gir1.2-webkit2-4.0' \
	-d 'python3-gi' \
	-d 'python3-xdg' \
	-d 'openbox' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
