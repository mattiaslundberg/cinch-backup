AVER=0.8.10
DIR=cinch-backup-$(AVER)

all: $(DIR).tar.gz

cinch-backup.8:
	LANG= LC_ALL= txt2man -r $(AVER) -t cinch-backup -s 8 cinch-backup.man.txt >cinch-backup.8

$(DIR).tar.gz: cinch-backup.8 \
 etc/cinch-backup.conf bin/cinch-backup \
 lib/common.inc \
 lib/local etc/local-example.conf \
 lib/smb etc/smb-example.conf \
 lib/ssh etc/ssh-example.conf
	mkdir $(DIR)
	cp etc/cinch-backup.conf $(DIR)/
	cp bin/cinch-backup $(DIR)/
	cp lib/common.inc $(DIR)/
	cp lib/local $(DIR)/
	cp etc/local-example.conf $(DIR)/
	cp lib/smb $(DIR)/
	cp etc/smb-example.conf $(DIR)/
	cp lib/ssh $(DIR)/
	cp etc/ssh-example.conf $(DIR)/
	cp cinch-backup.8 $(DIR)/
	tar czf $(DIR).tar.gz $(DIR)/
	rm -rf $(DIR)
	sed -i "s|md5sums=(.*$$|md5sums=('`md5sum $(DIR).tar.gz | cut -f 1 -d \ `')|g" PKGBUILD
	sed -i "s|pkgver=.*$$|pkgver=$(AVER)|g" PKGBUILD

clean:
	rm -f *.tar.gz *.8
