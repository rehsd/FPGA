SUMMARY = "GCC AddressSanitizer Library"
SECTION = "libs"
LICENSE = "GPL-3.0-with-GCC-exception"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-3.0-with-GCC-exception;md5=9598ac57e5801dc4364075a6724b96b3"

SRC_URI = "https://releases.linaro.org/components/toolchain/binaries/latest-7/arm-linux-gnueabihf/libasan.so.8"

S = "${WORKDIR}"

do_install() {
    install -d ${D}${libdir}
    install -m 0755 ${WORKDIR}/libasan.so.8 ${D}${libdir}
}

RPROVIDES_${PN} += "libasan"

