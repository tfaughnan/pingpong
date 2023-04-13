PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
DOCDIR ?= $(PREFIX)/share/doc
INITDDIR ?= /etc/init.d
CONFDDIR ?= /etc/conf.d

install: pingpong openrc/pingpong.initd openrc/pingpong.confd
	install -d $(DESTDIR)$(BINDIR) $(DESTDIR)$(INITDDIR) \
		$(DESTDIR)$(CONFDDIR) $(DESTDIR)$(DOCDIR)/pingpong
	install -m755 pingpong $(DESTDIR)$(BINDIR)/pingpong
	install -m755 openrc/pingpong.initd $(DESTDIR)$(INITDDIR)/pingpong
	install -m644 openrc/pingpong.confd $(DESTDIR)$(CONFDDIR)/pingpong
	install -m644 README.md $(DESTDIR)$(DOCDIR)/pingpong/README.md

.PHONY: install
