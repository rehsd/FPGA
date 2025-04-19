#
# This file is the flash-led recipe.
#

SUMMARY = "Simple flash-led application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://flash-led.c \
	   file://Makefile \
		  "

S = "${WORKDIR}"

do_compile() {
	     oe_runmake
}

INHIBIT_PACKAGE_STRIP = "1"

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 flash-led ${D}${bindir}
}

RDEPENDS_${PN} += "libgpiod"
