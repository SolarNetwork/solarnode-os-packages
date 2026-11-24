NAME = sn-historian-db-local
VERSION = 1.0.0-1
PATHS = lib

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'SolarNode historian on the local Postgres database' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
	-a all \
	--force \
	-d 'postgresql-17' \
	-d 'solarnode-app-db-postgres (>= 2.0.2)' \
	-d 'solarnode-app-datumhistorian-jdbc (>= 1.0.0-1)' \
	-d 'postgresql-17-cron (>= 1.6)' \
	-d 'sn-postgresql-17-aggs-for-vecs (>= 1.4.1)' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	--after-remove $(NAME).postrm \
	--deb-no-default-config-files \
	$(PATHS)

prep :
	find $(PATHS) -type f -name .DS_Store -delete

clean :
	rm $(NAME)_$(VERSION)_all.deb
