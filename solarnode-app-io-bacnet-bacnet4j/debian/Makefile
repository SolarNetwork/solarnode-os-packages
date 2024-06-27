NAME = solarnode-app-io-bacnet-bacnet4j
VERSION = 2.2.0-1
PATHS = var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : app table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode BACnet I/O - BACnet4J' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		-d 'solarnode-app-core (>= 3.0)' \
		-d 'solarnode-app-io-bacnet (>= 1.1)' \
		-d 'solarnode-base-commons-lang3 (>= 1.0)' \
		--conflicts 'solarnode-io-bacnet' \
		--replaces 'solarnode-io-bacnet' \
		--provides 'solarnode-io-bacnet' \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

app :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
