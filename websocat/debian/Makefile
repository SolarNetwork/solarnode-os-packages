NAME = websocat
DIST = 
VERSION = 1.10.1-1$(if $(DIST),+$(DIST),)

deb : assemble
	fpm -s dir -t deb \
	-n $(NAME) \
	-v $(VERSION) \
	-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
	--vendor 'SolarNetwork Foundation' \
	--description 'Command-line client for WebSockets.' \
	--url 'https://github.com/vi/websocat' \
	--license 'MIT license' \
	--force \
	-C websocat/target/release/assemble \
	--deb-activate noawait \
	usr

assemble: websocat/target/release/assemble/usr/bin/websocat

websocat/target/release/assemble/usr/bin/websocat : 
	mkdir -p websocat/target/release/assemble/usr/bin
	ln websocat/target/release/websocat websocat/target/release/assemble/usr/bin

clean : 
	rm -f $(NAME)_$(VERSION)*.deb
