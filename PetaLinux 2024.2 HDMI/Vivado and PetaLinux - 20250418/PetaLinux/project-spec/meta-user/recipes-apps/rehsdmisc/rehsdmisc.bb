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
           file://rock_48khz.wav \
           file://classical_48khz.wav \
           file://asound.state \
           file://notes.txt \
           file://weston.ini \
           file://file.png \
           file://terminal.png \
           file://sample-avi-files-sample_1280x720.avi \
           file://sampleVid_720p48khz.mp4 \
           file://reset_sound.sh \
           file://fps_test_720.sh \
           file://fps_test_1080.sh \
           file://getCoreTemp.sh \
           file://monitorTemp.sh \
           file://runBenchLoop.sh \
           file://runCpuLoop.sh \
           file://runMemLoop.sh \
           file://runGraphicsLoop.sh \
           file://playVideo.sh \
           file://playVideo2.sh \
          "

FILES_${PN} += "/usr/bin/rehsd/xorg.conf \
		/usr/bin/rehsd/setup.sh \
		/usr/bin/rehsd/setup2.sh \
		/usr/bin/rehsd/user_start.sh \
		/usr/bin/rock_48khz.wav \
		/usr/bin/classical_48khz.wav \
		/usr/bin/rehsd/asound.state \
		/usr/bin/rehsd/notes.txt \
		/usr/bin/rehsd/weston.ini \
		/usr/bin/rehsd/file.png \
		/usr/bin/rehsd/terminal.png \
		/usr/bin/rehsd/sample-avi-files-sample_1280x720.avi \
		/usr/bin/rehsd/sampleVid_720p48khz.mp4 \
		/usr/bin/reset_sound.sh \
		/usr/bin/rehsd/fps_test_720.sh \
		/usr/bin/rehsd/fps_test_1080.sh \
		/usr/bin/rehsd/getCoreTemp.sh \
		/usr/bin/rehsd/monitorTemp.sh \
		/usr/bin/rehsd/runBenchLoop.sh \
		/usr/bin/rehsd/runCpuLoop.sh \
		/usr/bin/rehsd/runMemLoop.sh \
		/usr/bin/rehsd/runGraphicsLoop.sh \
		/usr/bin/rehsd/playVideo.sh \
		/usr/bin/rehsd/playVideo2.sh \
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
    install -m 0666 ${WORKDIR}/rock_48khz.wav ${D}${bindir}/rehsd/rock_48khz.wav
    install -m 0666 ${WORKDIR}/classical_48khz.wav ${D}${bindir}/rehsd/classical_48khz.wav
    install -m 0666 ${WORKDIR}/notes.txt ${D}${bindir}/rehsd/notes.txt
    install -m 0666 ${WORKDIR}/weston.ini ${D}${bindir}/rehsd/weston.ini
    install -m 0666 ${WORKDIR}/file.png ${D}${bindir}/rehsd/file.png
    install -m 0666 ${WORKDIR}/terminal.png ${D}${bindir}/rehsd/terminal.png
    install -m 0666 ${WORKDIR}/sample-avi-files-sample_1280x720.avi ${D}${bindir}/rehsd/sample-avi-files-sample_1280x720.avi
    install -m 0666 ${WORKDIR}/sampleVid_720p48khz.mp4 ${D}${bindir}/rehsd/sampleVid_720p48khz.mp4
    install -m 0777 ${WORKDIR}/reset_sound.sh ${D}${bindir}/rehsd/reset_sound.sh
    install -m 0777 ${WORKDIR}/fps_test_720.sh ${D}${bindir}/rehsd/fps_test_720.sh
    install -m 0777 ${WORKDIR}/fps_test_1080.sh ${D}${bindir}/rehsd/fps_test_1080.sh
    install -m 0777 ${WORKDIR}/getCoreTemp.sh ${D}${bindir}/rehsd/getCoreTemp.sh
    install -m 0777 ${WORKDIR}/monitorTemp.sh ${D}${bindir}/rehsd/monitorTemp.sh
    install -m 0777 ${WORKDIR}/runBenchLoop.sh ${D}${bindir}/rehsd/runBenchLoop.sh
    install -m 0777 ${WORKDIR}/runCpuLoop.sh ${D}${bindir}/rehsd/runCpuLoop.sh
    install -m 0777 ${WORKDIR}/runMemLoop.sh ${D}${bindir}/rehsd/runMemLoop.sh
    install -m 0777 ${WORKDIR}/runGraphicsLoop.sh ${D}${bindir}/rehsd/runGraphicsLoop.sh
    install -m 0777 ${WORKDIR}/playVideo.sh ${D}${bindir}/rehsd/playVideo.sh
    install -m 0777 ${WORKDIR}/playVideo2.sh ${D}${bindir}/rehsd/playVideo2.sh
}
