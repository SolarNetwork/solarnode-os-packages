DIST = 
NAME = sn-orangepi
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = usr

deb : 
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--description 'Orange Pi SolarNode support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'systemd (>= 230)' \
	--after-install sn-orangepi.postinst \
	$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb
