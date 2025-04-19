#
# This file is the sndserver recipe.
#

SUMMARY = "Simple sndserver application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://linux.c \
		file://sounds.c \
		file://sounds.h \
		file://soundsrv.c \
		file://soundsrv.h \
		file://soundst.h \
		file://wadread.c \
		file://wadread.h \
	   	file://Makefile \
		  "

S = "${WORKDIR}"

do_compile() {
    export CROSS_COMPILE=arm-linux-gnueabihf-
    export PATH=$PATH:/usr/bin
    echo "CROSS_COMPILE: $CROSS_COMPILE"
    #which ${CROSS_COMPILE}gcc
    #echo "PATH: $PATH"
    #ls -l $(which ${CROSS_COMPILE}gcc)
    ${CROSS_COMPILE}gcc --version
    export CFLAGS="-I${PETA_DIR}/sysroot/usr/include/SDL"
    export LDFLAGS="-L${PETA_DIR}/sysroot/usr/lib"
    oe_runmake
}

do_install() {
	     install -d ${D}${bindir}
	     install -m 0755 ${S}/linux/sndserver ${D}${bindir}
}

# RDEPENDS_${PN} += "libasan"