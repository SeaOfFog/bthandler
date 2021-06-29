# bthandler
# See LICENSE file for copyright and license details.

# paths
DESTDIR = /usr/local/bin
DATA_DIR = ~/.config/bt#if changed, needs adjustment in bt as well (defined in the beginning)
SRC = bt


install:
	mkdir -p $(DESTDIR)
	mkdir -p $(DATA_DIR)
	cp -f bt $(DESTDIR)/bt
	chmod 755 $(DESTDIR)/bt
	touch $(DATA_DIR)/blacklist
	touch $(DATA_DIR)/paired
	touch $(DATA_DIR)/alias

uninstall:
	rm -f $(DESTDIR)/bt
	rm -rf $(DATA_DIR)

#clears manual paired devices list and blacklist
clear:
	rm -rf $(DATA_DIR)
	mkdir -p $(DATA_DIR)
	touch $(DATA_DIR)/paired
	touch $(DATA_DIR)/blacklist
	touch $(DATA_DIR)/alias

.PHONY: install uninstall clear
