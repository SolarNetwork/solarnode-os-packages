NAME = solarnode-app-datumhistorian-jdbc
VERSION = 1.0.0-1
ASSEMBLE_PATHS = usr
PATHS = $(ASSEMBLE_PATHS) var
SN_BUILD_ROOT = ${CURDIR}/solarnetwork-build
SN_IVY_FILE = ${CURDIR}/../ivy.xml
DEB_BUILD_ROOT = $(SN_BUILD_ROOT)/solarnode-deploy/generic/build/deb
SQL_DIR = usr/share/solarnode/datumhistorian-jdbc/sql
SN_ANT_OPTS =

pkg : prep app assemble table
	fpm -s dir \
		-t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-a all \
		-m 'packaging@solarnetwork.org.nz' \
		--vendor 'SolarNetwork Foundation' \
		--description 'SolarNode Datum Historian - JDBC' \
		--license 'GPL 2.0' \
		--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/$(NAME)/debian" \
		-f \
		-d 'solarnode-app-core (>= 4.19)' \
		-d 'solarnode-base-postgres' \
		--chdir $(DEB_BUILD_ROOT) \
		$(PATHS)

prep :
	rm -rf $(DEB_BUILD_ROOT)
	mkdir -p $(DEB_BUILD_ROOT)
	find $(ASSEMBLE_PATHS) -type f -name .DS_Store -delete

assemble :
	cp -r $(ASSEMBLE_PATHS) $(DEB_BUILD_ROOT)/
	# the solaruhist schema scripts, made from the solarhist ones as the plugin README does
	sed 's/\bsolarhist/solaruhist/g' $(SQL_DIR)/postgres-init.sql \
		>$(DEB_BUILD_ROOT)/$(SQL_DIR)/postgres-init-solaruhist.sql
	sed 's/\bsolarhist/solaruhist/g' $(SQL_DIR)/postgres-init-agg.sql \
		>$(DEB_BUILD_ROOT)/$(SQL_DIR)/postgres-init-agg-solaruhist.sql

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
