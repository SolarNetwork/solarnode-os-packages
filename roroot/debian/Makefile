NAME = sn-roroot
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
PATHS = etc usr

deb : 
	fpm -s dir -t deb \
	-n sn-pi \
	-v $(VERSION) \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	-a all \
	--description 'SolarNode read-only filesystem root support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'systemd (>= 230)' \
	--after-install sn-roroot.postinst \
	etc lib usr

clean : 
	rm sn-pi_$(VERSION)_all.deb
