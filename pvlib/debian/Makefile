NAME = sn-pvlib
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)

deb : 
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode pvlib support' \
		--license 'Apache License 2.0' \
		-f \
		-d 'python3 (>= 3.7)' \
		-d 'python3-pip' \
		-d 'python3-venv' \
		--after-install $(NAME).postinst \
		usr var

clean : 
	rm $(NAME)_$(VERSION)_all.deb
