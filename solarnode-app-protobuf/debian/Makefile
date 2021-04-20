NAME = solarnode-app-protobuf
VERSION = 1.1.0-1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS) var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy-protobuf.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/equinox/build/deb
SN_ANT_OPTS =

deb : prep assemble app-core table
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode application Protobuf support' \
		--license 'GPL 2.0' \
		-f \
		-d 'solarnode-base (>= 1.2.0)' \
		-d 'solarnode-app-core (>= 1.0.0)' \
		-d 'protobuf-compiler (>= 3.12.3)' \
		-d 'protobuf-compiler (<< 3.12.4)' \
		--after-install $(NAME).postinst \
		--after-remove $(NAME).postrm \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)
	
clean : 
	rm $(NAME)_$(VERSION)_all.deb

prep : 
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)

assemble : 
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/

app-core :
	ant -f "$(SN_BUILD_ROOT)/solarnode-deploy/equinox/build-deb-app.xml" \
		"-Divy.file=$(SN_IVY_FILE)" \
		"-Dapp.dirname=core" \
		$(SN_ANT_OPTS) \
		deb-package-assemble

table :
	java -jar "$(SN_BUILD_ROOT)/solarnetwork-osgi-lib/lib/bh.jar" "$(DEB_BUILD_ROOT)"
