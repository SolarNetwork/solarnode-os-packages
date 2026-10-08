NAME = sunspec-shell
DIST = 
VERSION = 0.1.0-1$(if $(DIST),+$(DIST),)

deb : assemble
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'Interactive shell for SunSpec modbus devices.' \
		--url 'https://github.com/vi/websocat' \
		--license 'Apache 2.0 license' \
		-d 'libssl3' \
		--force \
		-C assemble \
		--deb-activate noawait \
		usr

assemble: assemble/usr/bin/sunspec-shell

assemble/usr/bin/sunspec-shell : 
	mkdir -p assemble/usr/bin
	cp nifty-sunspec/shell/build/native/nativeCompile/sunspec-shell assemble/usr/bin/

clean : 
	rm -f $(NAME)_$(VERSION)*.deb
