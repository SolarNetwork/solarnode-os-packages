DIST = 
VERSION = 1.0.2-1$(if $(DIST),+$(DIST),)
NAME = sn-iptables
PATHS = etc lib usr

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'iptables firewall management service' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'cron (>= 3.0)' \
	-d 'iptables (>= 1.8.7)' \
	-d 'systemd (>= 215)' \
	--provides 'solarnode-firewall' \
	--after-install $(NAME).postinst \
	--after-remove $(NAME).postrm \
	--deb-no-default-config-files \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
