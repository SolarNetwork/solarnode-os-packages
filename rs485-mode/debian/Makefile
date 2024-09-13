NAME = sn-rs485-mode
DIST = 
VERSION = 1.0.0-1$(if $(DIST),+$(DIST),)
BUILDDIR = local
SRCDIR = ../src

all : deb

deb : clean assemble
	fpm -s dir -t deb \
		-n $(NAME) \
		-v $(VERSION) \
		-m 'SolarNetwork Packaging <packaging@solarnetwork.org.nz>' \
		--vendor 'SolarNetwork Foundation' \
		--description 'RS-485 IO control mode utility.' \
		--url 'https://github.com/stephane/libmodbus' \
		--license 'Lesser General Public License 2.1' \
		--force \
		-C $(BUILDDIR) \
		--deb-activate noawait \
		usr

assemble : $(BUILDDIR)/sn-rs485-mode
	mkdir -p $(BUILDDIR)/usr/bin
	ln $(BUILDDIR)/sn-rs485-mode $(BUILDDIR)/usr/bin/sn-rs485-mode

$(BUILDDIR)/sn-rs485-mode :
	mkdir -p $(BUILDDIR)
	cc -o $(BUILDDIR)/sn-rs485-mode $(SRCDIR)/sn-rs485-mode.c

clean : 
	rm -f $(NAME)_$(VERSION)*.deb
	rm -rf $(BUILDDIR)
