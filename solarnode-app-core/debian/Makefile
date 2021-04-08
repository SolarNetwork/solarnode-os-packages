NAME = solarnode-app-core
VERSION = 1.14.0-1
PATHS = var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = $(SN_BUILD_ROOT)/solarnode-deploy/generic/example/ivy-deb.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =

deb : prep app-core table
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarNode application core' \
	--license 'GPL 2.0' \
	-f \
	-d 'solarnode-framework' \
	-d 'sn-solarssh (>= 1.0.0)' \
	--after-install $(NAME).postinst \
	--chdir $(DEB_BUILD_ROOT) \
	$(PATHS)

prep : 
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete

clean : 
	rm $(NAME)_$(VERSION)_all.deb

app-core :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" \
		"$(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb"
