NAME = solarnode-app-db-derby
VERSION = 2.0.0_1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS)
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : prep app assemble table
	fpm -s dir \
		-t freebsd \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode DB - Derby' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/freebsd" \
		-f \
		--provides 'solarnode-app-db' \
		--conflicts 'solarnode-app-db' \
		--replaces 'solarnode-app-db' \
		-d 'solarnode-app-core (>= 3.0)' \
		--replaces 'solarnode-app-core (<< 2.7)' \
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
		"-Ddir.deb.app.path=usr/local/solarnode" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
