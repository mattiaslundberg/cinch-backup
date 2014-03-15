# $Id$
# Maintainer: Sergej Pupykin <pupykin.s+arch@gmail.com>
# Contributor: Sergej Pupykin <pupykin.s+arch@gmail.com>

pkgname=cinch-backup
pkgver=0.8.10
pkgrel=1
pkgdesc="trivial backup scripts (ssh/smb support)"
arch=(any)
url="http://code.google.com/p/archlinux-stuff/"
license="GPL"
depends=()
backup=(etc/cinch-backup/cinch-backup.conf)
source=(http://archlinux-stuff.googlecode.com/files/cinch-backup-$pkgver.tar.gz)
md5sums=('3ecc8c21645d7f7f40a4ae7b42baef2c')

build() {
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/cinch-backup.conf \
			$pkgdir/etc/cinch-backup/cinch-backup.conf
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/cinch-backup.sh \
			$pkgdir/usr/bin/cinch-backup
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/ssh-backup.sh \
			$pkgdir/usr/lib/cinch-backup/ssh
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/smb-backup.sh \
			$pkgdir/usr/lib/cinch-backup/smb
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/local-backup.sh \
			$pkgdir/usr/lib/cinch-backup/local
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/common.inc \
			$pkgdir/usr/lib/cinch-backup/common.inc
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/local-example.conf \
			$pkgdir/etc/cinch-backup/_local-example
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/ssh-example.conf \
			$pkgdir/etc/cinch-backup/_ssh-example
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/smb-example.conf \
			$pkgdir/etc/cinch-backup/_smb-example
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/cinch-backup.8 \
			$pkgdir/usr/share/man/man8/cinch-backup.8
}
