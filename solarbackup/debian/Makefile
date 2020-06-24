NAME = sn-solarbackup
VERSION = 1.0.0-0
PATHS = etc usr var

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarNode resource backup support' \
	--license 'Apache License 2.0' \
	-f \
	-d 'tar (>= 1.27)' \
	$(PATHS)

prep : 
	find $(PATHS) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb
