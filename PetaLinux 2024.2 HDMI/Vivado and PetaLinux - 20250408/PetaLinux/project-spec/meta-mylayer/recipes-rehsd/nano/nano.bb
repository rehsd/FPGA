SUMMARY = "Nano text editor"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "http://archive.ubuntu.com/ubuntu/pool/universe/n/nano/nano_5.4-2_armhf.deb"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${bindir}
    install -m 0755 ${WORKDIR}/nano_5.4-2_armhf.deb ${D}${bindir}/nano
}

