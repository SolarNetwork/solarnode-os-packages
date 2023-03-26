NAME = solarnode-base-reactive-streams
VERSION = 1.0.0_1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS)
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb
SN_ANT_OPTS =

deb : prep app-core assemble table
	fpm -s dir \
		-t freebsd \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode platform Reactive Streams support' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/freebsd" \
		-f \
		-d 'solarnode-base (>= 2.0)' \
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
		"-Dapp.dirname=core" \
		"-Ddir.deb.app.path=usr/local/solarnode" \
		"-Ddir.deb.conf.path=usr/local/solarnode/conf" \
		"-Ddir.deb.share.path=usr/local/solarnode" \
		"-Ddeb.nocopy=1" \
		"-Ddeb.nosymlinks=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
