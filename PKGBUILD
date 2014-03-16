# $Id$
# Maintainer: Mattias Lundberg <lundberg.mattias@gmail.com>
# Contributor: Mattias Lundberg <lundberg.mattias@gmail.com>

pkgname=cinch-backup
pkgver=0.8.10
pkgrel=1
pkgdesc="trivial backup scripts (ssh/smb support)"
arch=(any)
url="https://github.com/mattiaslundberg/cinch-backup"
license="GPL"
depends=()
backup=(etc/cinch-backup/cinch-backup.conf)
source=(cinch-backup-$pkgver.tar.gz)
sha512sums=('cea748491f5c7ef496f65d8a2244f98e7f7dce2589c41946a9aaf4a795fd8358eddd5ccbd939ab8805b4eee17d40bbe2fe026e6b3cc7d71c1e74db6ffdbb6bf7')

package() {
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/cinch-backup.conf \
			$pkgdir/etc/cinch-backup/cinch-backup.conf
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/cinch-backup \
			$pkgdir/usr/bin/cinch-backup
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/ssh \
			$pkgdir/usr/lib/cinch-backup/ssh
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/smb \
			$pkgdir/usr/lib/cinch-backup/smb
	install -D -m 0755 $srcdir/cinch-backup-$pkgver/local \
			$pkgdir/usr/lib/cinch-backup/local
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/common.inc \
			$pkgdir/usr/lib/cinch-backup/common.inc
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/local-example.conf \
			$pkgdir/etc/cinch-backup/local-example.conf
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/ssh-example.conf \
			$pkgdir/etc/cinch-backup/ssh-example.conf
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/smb-example.conf \
			$pkgdir/etc/cinch-backup/smb-example.conf
	install -D -m 0644 $srcdir/cinch-backup-$pkgver/cinch-backup.8 \
			$pkgdir/usr/share/man/man8/cinch-backup.8
}
