NAME = solarnode-app-db-h2-nonvolatile
VERSION = 3.0.0-1
ASSEMBLE_PATHS = etc
PATHS = $(ASSEMBLE_PATHS) var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : prep app assemble table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode DB - H2 (non-volatile)' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		--provides 'solarnode-app-db' \
		--conflicts 'solarnode-app-db' \
		--replaces 'solarnode-app-db' \
		-d 'solarnode-base-h2 (>= 1.1)' \
		-d 'solarnode-app-core (>= 4.0)' \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)
	find $(ASSEMBLE_PATHS) -type f -name .DS_Store -delete

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/

clean : 
	rm $(NAME)_$(VERSION)_all.deb

app :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddir.deb.assemble=$(DEB_BUILD_ROOT)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
