NAME = sn-historian
VERSION = 1.0.0-1
PATHS = lib usr var

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'SolarNode historian database helper' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
	-a all \
	--force \
	-d 'solarnode-app-core (>= 4.19)' \
	-d 'postgresql-client-17' \
	-d 'util-linux' \
	--after-install $(NAME).postinst \
	--after-remove $(NAME).postrm \
	--deb-no-default-config-files \
	$(PATHS)

prep :
	find $(PATHS) -type f -name .DS_Store -delete

clean :
	rm $(NAME)_$(VERSION)_all.deb
