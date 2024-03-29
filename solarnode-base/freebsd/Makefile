NAME = solarnode-base
BASE_NAME = $(NAME)
VERSION = 2.0.0_1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS)
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb
SN_ANT_OPTS = -Dlog.file=/usr/local/solarnode/var/log/solarnode.log

deb : prep assemble app postapp table
	fpm -s dir \
		-t freebsd \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode application' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base-jackson' \
		-d 'solarnode-base-spring (>= 2.0)' \
		-d 'solarnode-base-spring-security (>= 2.0)' \
		--provides 'solarnode-framework' \
		--chdir $(DEB_BUILD_ROOT) \
		--before-install $(BASE_NAME).preinst \
		--after-install $(BASE_NAME).postinst \
		$(PATHS)

clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/
	
postapp : 
	mv "$(DEB_BUILD_ROOT)/usr/local/solarnode/conf/tomcat-server.xml" \
		"$(DEB_BUILD_ROOT)/usr/local/solarnode/conf/tomcat-server-example.xml"
	
app :
	find $(DEB_BUILD_ROOT) -type f -name .DS_Store -delete
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/equinox/build.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Ddir.deb.assemble=$(DEB_BUILD_ROOT)" \
		"-Ddir.deb.app.path=usr/local/solarnode" \
		"-Ddir.deb.conf.path=usr/local/solarnode/conf" \
		"-Ddir.deb.share.path=usr/local/solarnode" \
		"-Ddeb.nocopy=1" \
		"-Ddeb.nosymlinks=1" \
		$(SN_ANT_OPTS) \
		deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" \
		"$(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb"
