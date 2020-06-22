NAME = sn-socketcand
DIST = 
VERSION = 0.6.2+dev-1$(if $(DIST),+$(DIST),)
SOCKETCAND_INSTALL_DIR = socketcand/local
PATHS = etc lib usr

deb : copy prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
	--vendor 'SolarNetwork Foundation' \
	--description 'socketcand server.' \
	--url https://github.com/linux-can/socketcand \
	--license 'Apache License 2.0' \
	-C $(SOCKETCAND_INSTALL_DIR) \
	--force \
	$(PATHS)

copy : 
	rm -rf $(SOCKETCAND_INSTALL_DIR)/lib
	cp -a lib $(SOCKETCAND_INSTALL_DIR)/

prep : 
	find $(SOCKETCAND_INSTALL_DIR) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
