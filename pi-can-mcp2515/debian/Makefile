DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
NAME = sn-pi-can-mcp2515
PATHS = etc lib usr var

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Raspberry Pi MCP2515 CAN HAT support' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--force \
	-d 'systemd (>= 232)' \
	--conflicts 'sn-pi-seeed-can-hat' \
	--after-install $(NAME).postinst \
	--before-remove $(NAME).postrm \
	--before-remove $(NAME).prerm \
	--deb-no-default-config-files \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
