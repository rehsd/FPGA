#
# This file is the fbtest recipe.
#

SUMMARY = "Simple fbtest application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://fbtest.c \
	   file://sprite_data.c \
	   file://Makefile \
	   file://bird_1920x1080_24bpp.jpg \
	   file://bird_1280x720_24bpp.rgb \
		  "
FILES_${PN} = "/usr/bin/bird_1920x1080_24bpp.jpg \
	       /usr/bin/bird_1280x720_24bpp.rgb \
	          "
S = "${WORKDIR}"

do_compile() {
	     oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 fbtest ${D}${bindir}
	     install -D -m 0644 ${WORKDIR}/bird_1920x1080_24bpp.jpg ${D}${bindir}/bird_1920x1080_24bpp.jpg 
	     install -D -m 0644 ${WORKDIR}/bird_1280x720_24bpp.rgb ${D}${bindir}/bird_1280x720_24bpp.rgb  
}
