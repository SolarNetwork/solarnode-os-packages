NAME = solarnode-app-io-modbus-server-db-jdbc
VERSION = 2.1.0-1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS) var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : prep assemble app table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode Modbus I/O - Server DB - JDBC' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		-d 'solarnode-app-core (>= 4.4)' \
		-d 'solarnode-app-io-modbus (>= 4.0)' \
		-d 'solarnode-app-io-modbus-server (>= 2.1)' \
		-d 'solarnode-nifty-modbus' \
		--after-install $(NAME).postinst \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete

app :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
