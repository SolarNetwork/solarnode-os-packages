NAME = sn-mbpoll
DIST = 
VERSION = 1.4.26-1$(if $(DIST),+$(DIST),)
MBPOLL_INSTALL_DIR = mbpoll/build/native/local

deb : prep
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'Command line utility to communicate with ModBus devices.' \
		--url https://github.com/epsilonrt/mbpoll \
		--license 'General Public License 3.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/mbpoll/debian" \
		-C $(MBPOLL_INSTALL_DIR) \
		--force \
		-d 'libmodbus5 (>= 3.1.4)' \
		--conflicts 'mbpoll' \
		--replaces 'mbpoll' \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		usr
	
prep :
	cp -av usr $(MBPOLL_INSTALL_DIR) 

clean : 
	rm -f $(NAME)_$(VERSION)*.deb
