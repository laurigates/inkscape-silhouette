#! /bin/bash
# Make a debian/ubuntu distribution
#
# Installs into a staging directory with `make install DESTDIR=...` and packs
# it with dpkg-deb. (checkinstall, which was used before, cannot run
# `make install` on Ubuntu 24.04.)

name=$1
vers=$2
url=http://github.com/fablabnbg/$name

## not even ubuntu 16.04 has python-usb 1.0,  we requre any python-usb
## and check at runtime again.
requires="python3-usb, bash"

tmp=../out
root=$(pwd)/pkgroot

[ -d $tmp ] && rm -rf $tmp/*.deb
mkdir -p $tmp
rm -rf "$root"

(cd files && make install PREFIX=/usr DESTDIR="$root") || { echo "make install error"; exit 1; }

mkdir -p "$root/usr/share/doc/$name"
cp files/README files/LICENSE* "$root/usr/share/doc/$name/"

# description-pak: the first line is the summary, the rest is the long
# description, which the control file wants indented by one space.
summary=$(head -n 1 description-pak)
long=$(tail -n +2 description-pak | grep -v '^$' | sed -e 's/^/ /')
size=$(du -sk "$root" | cut -f1)

mkdir -p "$root/DEBIAN"
cat > "$root/DEBIAN/control" <<EOF
Package: $name
Version: $vers-1
Section: other
Priority: optional
Architecture: all
Maintainer: Juergen Weigert <juewei@fabmail.org>
Depends: $requires
Installed-Size: $size
Homepage: $url
Description: $summary
$long
EOF

dpkg-deb --root-owner-group --build "$root" "$tmp/${name}_${vers}-1_all.deb" || { echo "dpkg-deb error"; exit 1; }
rm -rf "$root"
