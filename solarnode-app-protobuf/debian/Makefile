NAME = solarnode-app-protobuf
VERSION = 3.12.3-1
PATHS = usr

deb : prep
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode application Protobuf support' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base (>= 1.2.0)' \
		-d 'solarnode-app-core (>= 1.0.0)' \
		-d 'protobuf-compiler (>= 3.12.3)' \
		-d 'protobuf-compiler (<< 3.12.4)' \
		-d 'libprotobuf-java (>= 3.12.3)' \
		-d 'libprotobuf-java (<< 3.12.4)' \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		$(PATHS)
	
clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	find $(PATHS) -type f -name .DS_Store -delete
