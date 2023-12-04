NAME = solarnode-base
BASE_NAME = $(NAME)
DIST = 
VERSION = 3.0.2-1$(if $(DIST),+$(DIST),)
ASSEMBLE_PATHS = etc lib usr
PATHS = $(ASSEMBLE_PATHS) var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb
SN_ANT_OPTS = -Dlog.file=/run/solarnode/log/solarnode.log

deb : prep assemble app-core extras table
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-a all \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--description 'SolarNode platform' \
	--license 'GPL 2.0' \
	--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
	-f \
	-d 'systemd (>= 215)' \
	-d 'sn-system (>= 1.2.0)' \
	-d 'solarnode-base-jackson' \
	-d 'solarnode-base-spring (>= 2.0)' \
	-d 'solarnode-base-spring-security (>= 2.0)' \
	-d 'java11-runtime-headless' \
	--deb-field 'Breaks: solarnode-app-core (<< 3.9)' \
	--provides 'solarnode-framework' \
	--after-install $(BASE_NAME).postinst \
	--before-remove $(BASE_NAME).prerm \
	--after-remove $(BASE_NAME).postrm \
	--deb-no-default-config-files \
	--chdir $(DEB_BUILD_ROOT) \
	$(PATHS)

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

app-core :
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/equinox/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddir.deb.assemble=$(DEB_BUILD_ROOT)" \
		"-Ddeb.nocopy=1" \
		"-Dnovirgo=1" \
		$(SN_ANT_OPTS) \
		deb-package-assemble

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete
	if [ -n "$(DIST)" -a -d "root+$(DIST)" ]; then \
		cp -af "root+$(DIST)"/* $(DEB_BUILD_ROOT)/; \
	fi
	
extras:
	mkdir -p $(DEB_BUILD_ROOT)/var/lib/solarnode/var/weberrors
	cp -r ${CURDIR}/../weberrors/* $(DEB_BUILD_ROOT)/var/lib/solarnode/var/weberrors
	
table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
