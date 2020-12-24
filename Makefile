PROGNAME  ?= hangman
PREFIX    ?= /usr
BINDIR    ?= $(PREFIX)/bin
SHAREDIR  ?= $(PREFIX)/share
MANDIR    ?= $(PREFIX)/man/man1
CONFIGDIR ?= /etc

MANPAGE   ?= $(PROGNAME).1
ASSETDIR  ?= $(CONFIGDIR)/$(PROGNAME)

.PHONY: install
install: $(PROGNAME).out
	install -d $(DESTDIR)$(BINDIR)

	install -m755 $(PROGNAME).out $(DESTDIR)$(BINDIR)/$(PROGNAME)

	install -Dm644 ./scores   -t $(DESTDIR)$(ASSETDIR)/src
	install -Dm644 snd/*      -t $(DESTDIR)$(ASSETDIR)/snd
	install -Dm644 $(MANPAGE) -t $(DESTDIR)$(MANDIR)
	install -Dm644 LICENSE    -t $(DESTDIR)$(SHAREDIR)/licenses/$(PROGNAME)

	rm $(PROGNAME).out

.PHONY: uninstall
uninstall:
	rm $(DESTDIR)$(BINDIR)/$(PROGNAME)
	rm -rf $(DESTDIR)$(ASSETDIR)
	rm $(DESTDIR)$(MANDIR)/$(MANPAGE)
	rm -rf $(DESTDIR)$(SHAREDIR)/licenses/$(PROGNAME)
