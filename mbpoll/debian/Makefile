NAME = mbpoll
DIST = 
VERSION = 1.4.11-4$(if $(DIST),+$(DIST),)
MBPOLL_INSTALL_DIR = mbpoll/build/native/local

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
	--vendor 'SolarNetwork Foundation' \
	--description 'Command line utility to communicate with ModBus devices.' \
	--url https://github.com/epsilonrt/mbpoll \
	--license 'General Public License 3.0' \
	-C $(MBPOLL_INSTALL_DIR) \
	--force \
	-d 'libmodbus (>= 3.1.0)' \
	--after-install $(NAME).postinst \
	--after-remove $(NAME).postrm \
	usr
	
prep :
	cp -av usr $(MBPOLL_INSTALL_DIR) 

clean : 
	rm -f $(NAME)_$(VERSION)*.deb
