NAME = solarnode-app-core
VERSION = 3.23.2-1
PATHS = var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/ivy-deb.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

pkg : app-core table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode application core' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		-d 'solarnode-base (>= 4.2.2)' \
		-d 'sn-solarpkg (>= 1.2)' \
		-d 'sn-solarssh (>= 1.0)' \
		-d 'sn-system (>= 1.6)' \
		-d 'solarnode-base-jaxb' \
		-d 'solarnode-base-netty' \
		-d 'solarnode-base-tiles' \
		-d 'solarnode-base-xalan' \
		-d 'solarnode-app-io-mqtt (>= 4.0)' \
		-d 'solarnode-app-db-h2 (>= 2.0.1) | solarnode-app-db' \
		--after-install $(NAME).postinst \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

app-core :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
