NAME = solarnode-base-commons-lang3
VERSION = 3.12.0-2
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS)
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb
SN_ANT_OPTS =

deb : prep app-core assemble table
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode platform Commons Lang3 support' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base (>= 1.13)' \
		--deb-field 'Breaks: solarnode-base (<< 1.13)' \
		--replaces 'solarnode-base (<< 1.13)' \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)
	
clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)
	find $(PATHS) -type f -name .DS_Store -delete

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/

app-core :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/equinox/build-deb-app.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddir.deb.assemble=$(DEB_BUILD_ROOT)" \
		"-Dapp.dirname=boot" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
