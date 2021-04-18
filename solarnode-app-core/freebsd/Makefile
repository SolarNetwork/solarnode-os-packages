NAME = solarnode-app-core
VERSION = 1.14.0_1
PATHS = usr
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = $(SN_BUILD_ROOT)/solarnode-deploy/generic/example/ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : app-core table
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
		-d 'solarnode-framework' \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm -f $(NAME)-$(VERSION).txz

app-core :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		"-Ddir.deb.app.path=usr/local/solarnode" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
