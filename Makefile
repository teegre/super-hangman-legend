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
	install -d $(BINDIR)

	install -m755 $(PROGNAME).out $(BINDIR)/$(PROGNAME)

	install -Dm644 ./scores   -t $(ASSETDIR)/src
	install -Dm644 snd/*      -t $(ASSETDIR)/snd
	install -Dm644 $(MANPAGE) -t $(MANDIR)
	install -Dm644 LICENSE    -t $(SHAREDIR)/licenses/$(PROGNAME)

	rm $(PROGNAME).out

.PHONY: uninstall
uninstall:
	rm $(BINDIR)/$(PROGNAME)
	rm -rf $(DESTDIR)$(ASSETDIR)
	rm $(DESTDIR)$(MANDIR)/$(MANPAGE)
	rm -rf $(SHAREDIR)/licenses/$(PROGNAME)
