SUMMARY = "Simple rehsdmisc application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://rehsdmisc.c \
           file://Makefile \
           file://xorg.conf \
           file://setup.sh \
          "

FILES_${PN} += "/usr/bin/rehsd/xorg.conf \
		/usr/bin/rehsd/setup.sh \
	"

S = "${WORKDIR}"

do_compile() {
    oe_runmake
}

do_install() {
    install -d ${D}${bindir}
    install -d ${D}${bindir}/rehsd
    install -m 0755 rehsdmisc ${D}${bindir}
    install -m 0644 ${WORKDIR}/xorg.conf ${D}${bindir}/rehsd/xorg.conf
    install -m 0744 ${WORKDIR}/setup.sh ${D}${bindir}/rehsd/setup.sh
}

