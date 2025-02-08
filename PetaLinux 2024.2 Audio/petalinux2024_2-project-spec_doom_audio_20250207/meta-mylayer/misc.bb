SUMMARY = "Misc files"
DESCRIPTION = "Miscellaneous files for the system."
LICENSE = "CLOSED"

SRC_URI = "file://xorg.conf"

do_install() {
    install -d ${D}/home/petalinux
    install -m 0644 ${WORKDIR}/xorg.conf ${D}/home/petalinux/xorg.conf
}

