PG_CONFIG = pg_config
PG_MAJOR := $(shell $(PG_CONFIG) --version 2>/dev/null | awk -F'[ .]' '{print $$2}')

# Debian package names cannot contain underscores, so dashes are used
NAME = sn-postgresql-$(PG_MAJOR)-aggs-for-vecs
DIST := $(shell . /etc/os-release 2>/dev/null && echo $$VERSION_CODENAME)
PKG_VERSION = 1

# The aggs_for_vecs commit or tag to build. The 1.4.1 release was not tagged,
# so this is the "Release version 1.4.1" commit.
GIT_URL = https://github.com/pjungwir/aggs_for_vecs.git
GIT_REF = f6fae16ec1fbbfbb64254464609ecf481021e574

SRC_DIR = aggs_for_vecs
BUILD_DIR = build

# The version comes from the checked out sources, so these can only be used
# in recipes that run after the checkout target.
UPSTREAM_VERSION = $(shell sed -n "s/^default_version *= *'\(.*\)'.*/\1/p" $(SRC_DIR)/aggs_for_vecs.control)
VERSION = $(UPSTREAM_VERSION)-$(PKG_VERSION)$(if $(DIST),+$(DIST),)

deb : stage
	@test -n '$(UPSTREAM_VERSION)' \
		|| { echo 'Unable to determine version from $(SRC_DIR)/aggs_for_vecs.control' >&2; exit 1; }
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'Postgres $(PG_MAJOR) extension of aggregate functions for vectors (arrays) of numbers.' \
		--url 'https://github.com/pjungwir/aggs_for_vecs' \
		--license 'MIT' \
		-d 'postgresql-$(PG_MAJOR)' \
		--force \
		-C $(BUILD_DIR) \
		.

# Compile and then install into BUILD_DIR, using the paths reported by PG_CONFIG.
# Always start clean so objects compiled for another Postgres version are not reused.
stage : checkout
	@test -n '$(PG_MAJOR)' \
		|| { echo 'Unable to determine Postgres version from $(PG_CONFIG)' >&2; exit 1; }
	rm -rf $(BUILD_DIR)
	$(MAKE) -C $(SRC_DIR) PG_CONFIG=$(PG_CONFIG) clean
	umask 022 && $(MAKE) -C $(SRC_DIR) PG_CONFIG=$(PG_CONFIG) install-strip DESTDIR=$(abspath $(BUILD_DIR))

checkout : | $(SRC_DIR)
	git -C $(SRC_DIR) rev-parse -q --verify '$(GIT_REF)^{commit}' >/dev/null \
		|| git -C $(SRC_DIR) fetch -q --tags origin
	git -C $(SRC_DIR) checkout -q --detach '$(GIT_REF)'

$(SRC_DIR) :
	git clone $(GIT_URL) $@

clean :
	rm -rf $(BUILD_DIR)
	rm -f $(NAME)_*.deb

.PHONY : deb stage checkout clean
