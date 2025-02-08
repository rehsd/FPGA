SUMMARY = "Simple rehsdmisc application"
SECTION = "PETALINUX/apps"
LICENSE = "MIT"
LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"

SRC_URI = "file://rehsdmisc.c \
           file://Makefile \
           file://xorg.conf \
           file://setup.sh \
           file://setup2.sh \
           file://user_start.sh \
           file://sample_s16_le_44_1k.wav \
           file://sample_s16_le_48k.wav \
           file://sample_s24_le.wav \
           file://rock_48khz.wav \
           file://rock_44_1khz.wav \
           file://classical_48khz.wav \
           file://asound.state \
           file://notes.txt \
          "

FILES_${PN} += "/usr/bin/rehsd/xorg.conf \
		/usr/bin/rehsd/setup.sh \
		/usr/bin/rehsd/setup2.sh \
		/usr/bin/rehsd/user_start.sh \
		/usr/bin/rehsd/sample_s16_le_44_1k.wav \
		/usr/bin/rehsd/sample_s16_le_48k.wav \
		/usr/bin/rehsd/sample_s24_le.wav \
		/usr/bin/rock_48khz.wav \
		/usr/bin/rock_44_1khz.wav \
		/usr/bin/classical_48khz.wav \
		/usr/bin/rehsd/asound.state \
		/usr/bin/rehsd/notes.txt \
	"

S = "${WORKDIR}"

do_compile() {
    oe_runmake
}

do_install() {
    install -d ${D}${bindir}
    install -d ${D}${bindir}/rehsd
    install -m 0755 rehsdmisc ${D}${bindir}
    install -m 0666 ${WORKDIR}/xorg.conf ${D}${bindir}/rehsd/xorg.conf
    install -m 0666 ${WORKDIR}/asound.state ${D}${bindir}/rehsd/asound.state  
    install -m 0777 ${WORKDIR}/setup.sh ${D}${bindir}/rehsd/setup.sh
    install -m 0777 ${WORKDIR}/setup2.sh ${D}${bindir}/rehsd/setup2.sh
    install -m 0777 ${WORKDIR}/user_start.sh ${D}${bindir}/rehsd/user_start.sh
    install -m 0666 ${WORKDIR}/sample_s16_le_44_1k.wav ${D}${bindir}/rehsd/sample_s16_le_44_1k.wav
    install -m 0666 ${WORKDIR}/sample_s16_le_48k.wav ${D}${bindir}/rehsd/sample_s16_le_48k.wav
    install -m 0666 ${WORKDIR}/sample_s24_le.wav ${D}${bindir}/rehsd/sample_s24_le.wav
    install -m 0666 ${WORKDIR}/rock_48khz.wav ${D}${bindir}/rehsd/rock_48khz.wav
    install -m 0666 ${WORKDIR}/rock_44_1khz.wav ${D}${bindir}/rehsd/rock_44_1khz.wav
    install -m 0666 ${WORKDIR}/classical_48khz.wav ${D}${bindir}/rehsd/classical_48khz.wav
    install -m 0666 ${WORKDIR}/notes.txt ${D}${bindir}/rehsd/notes.txt
}

