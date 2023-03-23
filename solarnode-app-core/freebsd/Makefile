NAME = solarnode-app-core
VERSION = 3.2.0_1
PATHS = usr
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/ivy-freebsd.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : app table
	fpm -s dir \
		-t freebsd \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode application core' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base (>= 2.0)' \
		-d 'sn-solarssh (>= 1.0)' \
		-d 'solarnode-base-netty' \
		-d 'solarnode-app-io-mqtt (>= 3.0)' \
		-d 'solarnode-app-db-derby (>= 2.0) | solarnode-app-db' \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm -f $(NAME)-$(VERSION).txz

app :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		"-Ddir.deb.app.path=usr/local/solarnode" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
