SUMMARY = "Simple DirectMedia Layer (SDL)"
LICENSE = "zlib"
LIC_FILES_CHKSUM = "file://COPYING;md5=1e9e3e7e2e2e2e2e2e2e2e2e2e2e2e2e"

SRC_URI = "https://github.com/libsdl-org/SDL/archive/release-2.0.14.tar.gz"

do_install() {
    install -D -m 644 ${WORKDIR}/SDL-2.0.14/src/main/libSDL2.a ${D}${sysconfdir}/lib/libsdl2.a
    install -D -m 644 ${WORKDIR}/SDL-2.0.14/include/SDL.h ${D}${includedir}/SDL.h
    install -D -m 644 ${WORKDIR}/SDL-2.0.14/src/main/libsdl2.so ${D}${libdir}/libsdl2.so
}

