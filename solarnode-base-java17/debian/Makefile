NAME = solarnode-base-java17
VERSION = 1.0.2-1
ASSEMBLE_PATHS = etc lib
PATHS = $(ASSEMBLE_PATHS)

deb : prep
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode platform Java 17 support' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base (>= 4.3)' \
		-d 'java17-runtime-headless' \
		--conflicts 'solarnode-java-runtime' \
		--replaces 'solarnode-java-runtime' \
		--provides 'solarnode-java-runtime' \
		--deb-no-default-config-files \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		$(PATHS)
	
clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	find $(PATHS) -type f -name .DS_Store -delete
