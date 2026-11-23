NAME = sn-grafana-repo
VERSION = 1.0.0-1
PATHS = etc
# the fingerprint of etc/apt/keyrings/grafana.asc, from https://apt.grafana.com/gpg.key
KEY_FPR = B53AE77BADB630A683046005963FA27710458545

deb : prep
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	--description 'Grafana apt repository support, with Grafana pinned to 12.x.' \
	--license 'Apache License 2.0' \
	-m 'packaging@solarnetwork.org.nz' \
	--vendor 'SolarNetwork Foundation' \
	--url "https://github.com/SolarNetwork/solarnode-os-packages/tree/develop/grafana-repo/debian" \
	-a all \
	--force \
	--deb-no-default-config-files \
	$(PATHS)

prep :
	find $(PATHS) -type f -name .DS_Store -delete
	gpg --show-keys --with-colons etc/apt/keyrings/grafana.asc | grep -q '^fpr:.*$(KEY_FPR)'

clean :
	rm -f $(NAME)_$(VERSION)_all.deb
