# bthandler
# See LICENSE file for copyright and license details.

VERSION = 1.1

# paths
PREFIX = ~/.local/bin
DATA_DIR = ~/.local/share/bt#if changed, needs adjustment in bt as well (defined in the beginning)
SRC = bt


install:
	mkdir -p $(DESTDIR)$(PREFIX)
	mkdir -p $(DATA_DIR)
	cp -f bt $(DESTDIR)$(PREFIX)
	chmod 755 $(DESTDIR)$(PREFIX)/bt
	touch $(DATA_DIR)/blacklist
	touch $(DATA_DIR)/paired

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bt
	rm -rf $(DATA_DIR)

#clears manual paired devices list and blacklist
clear:
	rm -rf $(DATA_DIR)
	mkdir -p $(DATA_DIR)
	touch $(DATA_DIR)/paired
	touch $(DATA_DIR)/blacklist

.PHONY: install uninstall clear
