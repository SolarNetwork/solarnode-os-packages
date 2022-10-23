DIST = 
NAME = sn-wifi
VERSION = 1.4.0-2$(if $(DIST),+$(DIST),)
PATHS = etc lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'WiFi management service' \
	--license 'Apache License 2.0' \
	-f \
	-d 'rfkill' \
	-d 'systemd (>= 215)' \
	-d 'sn-system (>= 1.5.0)' \
	-d 'wpasupplicant' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	--after-remove $(NAME).postrm \
	--deb-config $(NAME).config \
	--deb-templates $(NAME).templates \
	--deb-no-default-config-files \
	$(PATHS)

# Note the --deb-systemd switch causes the postinst script to be broken
# https://github.com/jordansissel/fpm/issues/1272

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
