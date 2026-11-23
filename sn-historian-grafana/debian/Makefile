NAME = sn-historian-grafana
VERSION = 1.0.0-3
PATHS = etc lib usr var

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Grafana for the SolarNode datum history' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
	-a all \
	--force \
	-d 'curl' \
	-d 'grafana (>= 12.1)' \
	-d 'solarnetwork-grafana-datasource (>= 4.0.0-2)' \
	-d 'solarnode-app-datumhistorian-jdbc (>= 1.0.0-2)' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).prerm \
	--after-remove $(NAME).postrm \
	--deb-no-default-config-files \
	$(PATHS)

prep :
	find $(PATHS) -type f -name .DS_Store -delete

clean :
	rm -f $(NAME)_$(VERSION)_all.deb
