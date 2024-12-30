SUMMARY = "ImageMagick for PetaLinux"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://LICENSE;md5=<checksum>"

SRC_URI = "http://www.imagemagick.org/download/releases/ImageMagick-7.0.10-27.tar.gz"
SRC_URI[md5sum] = "4d8ed17e55e418f2e9bb8fd9c55718d6"
SRC_URI[sha256sum] = "c7d7c6fd8a13f59357c2d9d245f0be8d91a92de93b8a37028e16bdc1a7744e77"

DEPENDS = "jpeg"

inherit autotools

do_configure() {
    ./configure --prefix=${D}${prefix} --exec-prefix=${D}${exec_prefix} --bindir=${D}${bindir} --libdir=${D}${libdir} --sbindir=${D}${sbindir} --datadir=${D}${datadir} --sysconfdir=${D}${sysconfdir} --sharedstatedir=${D}${sharedstatedir} --localstatedir=${D}${localstatedir} --libexecdir=${D}${libexecdir} --includedir=${D}${includedir} --datarootdir=${D}${datarootdir}
}

do_install() {
    oe_runmake install DESTDIR=${D}
}

FILES_${PN} += "/usr/local/bin/* /usr/local/lib/* /usr/local/share/*"

