NAME = solarnode-app-camera-ffmpeg
VERSION = 2.0.0-1
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SN_ANT_OPTS =
ASSEMBLE_PATHS = etc lib usr
PATHS = $(ASSEMBLE_PATHS) var

deb : app-main assemble table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode - Camera - ffmpeg' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		--deb-no-default-config-files \
		-d 'solarnode-app-core (>= 4.0)' \
		-d 'ffmpeg' \
		-d 'sn-system' \
		--deb-activate noawait \
		--after-install $(NAME).postinst \
		--before-remove $(NAME).prerm \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete

app-main :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/generic/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddeb.nocopy=1" \
		$(SN_ANT_OPTS) \
		clean deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
