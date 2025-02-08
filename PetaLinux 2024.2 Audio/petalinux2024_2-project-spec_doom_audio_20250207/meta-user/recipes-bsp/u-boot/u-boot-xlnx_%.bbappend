FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

SRC_URI:append = " file://platform-top.h file://bsp.cfg"
SRC_URI += "file://user_2024-12-15-23-46-00.cfg \
            file://user_2024-12-16-00-19-00.cfg \
            file://user_2024-12-16-00-34-00.cfg \
            file://user_2024-12-20-09-26-00.cfg \
            file://user_2024-12-20-09-30-00.cfg \
            "

