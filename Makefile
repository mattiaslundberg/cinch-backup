AVER=0.8.10
DIR=arch-backup-$(AVER)

all: $(DIR).tar.gz

arch-backup.8:
	LANG= LC_ALL= txt2man -r $(AVER) -t arch-backup -s 8 arch-backup.man.txt >arch-backup.8

$(DIR).tar.gz: arch-backup.8 \
 etc/arch-backup.conf bin/arch-backup \
 lib/common.inc \
 lib/local-backup etc/local-example.conf \
 lib/smb-backup etc/smb-example.conf \
 lib/ssh-backup etc/ssh-example.conf
	mkdir $(DIR)
	cp etc/arch-backup.conf $(DIR)/
	cp bin/arch-backup $(DIR)/
	cp lib/common.inc $(DIR)/
	cp lib/local-backup $(DIR)/
	cp etc/local-example.conf $(DIR)/
	cp lib/smb-backup $(DIR)/
	cp etc/smb-example.conf $(DIR)/
	cp lib/ssh-backup $(DIR)/
	cp etc/ssh-example.conf $(DIR)/
	cp arch-backup.8 $(DIR)/
	tar czf $(DIR).tar.gz $(DIR)/
	rm -rf $(DIR)
	sed -i "s|md5sums=(.*$$|md5sums=('`md5sum $(DIR).tar.gz | cut -f 1 -d \ `')|g" PKGBUILD
	sed -i "s|pkgver=.*$$|pkgver=$(AVER)|g" PKGBUILD

clean:
	rm -f *.tar.gz *.8
