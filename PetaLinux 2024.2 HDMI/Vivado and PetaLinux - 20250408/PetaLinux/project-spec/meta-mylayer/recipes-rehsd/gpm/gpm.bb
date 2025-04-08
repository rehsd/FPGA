SUMMARY = "General Purpose Mouse interface"
SECTION = "support"
LICENSE = "GPL-2.0"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=f6d77de3387d0b4fa73f0a19a6f7b137"

SRC_URI = "https://ftp.gnu.org/gnu/gpm/gpm-1.20.7.tar.gz"
SRC_URI[sha256sum] = "cbccf3f021b8a58be37c5b29367ba6c4e286bb31b3c0c4e33ed3b053c6e4f77c"

S = "${WORKDIR}/gpm-1.20.7"

DEPENDS = "ncurses"

inherit autotools

do_install() {
    oe_runmake 'DESTDIR=${D}' install
}

