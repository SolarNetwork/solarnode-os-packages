NAME = sn-docker-repo
VERSION = 1.0.0-1

deb : 
	fpm -s empty \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'Docker apt repository support.' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/docker-repo/debian" \
		-d 'curl' \
		--after-install $(NAME).postinst \
		--force
	
clean : 
	rm -f $(NAME)_$(VERSION)*.deb
