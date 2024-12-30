FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2024-12-22-23-22-00.cfg \
            file://user_2024-12-23-16-05-00.cfg \
            file://user_2024-12-23-19-24-00.cfg \
            file://user_2024-12-24-04-25-00.cfg \
            file://user_2024-12-24-16-45-00.cfg \
            file://user_2024-12-25-23-21-00.cfg \
            "
          

