NAME = solarnode-app-io-modbus-modbus4j-jsc
VERSION = 1.0.0-1
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
		--description 'SolarNode Modbus I/O - modbus4j - jSerialComm' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-app-io-modbus (>= 2.2)' \
		-d 'solarnode-base-jserialcomm (>= 2.9.2)' \
		-d 'solarnode-base-commons-lang3 (>= 3.4)' \
		--conflicts 'solarnode-io-modbus' \
		--replaces 'solarnode-io-modbus' \
		--provides 'solarnode-io-modbus' \
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
