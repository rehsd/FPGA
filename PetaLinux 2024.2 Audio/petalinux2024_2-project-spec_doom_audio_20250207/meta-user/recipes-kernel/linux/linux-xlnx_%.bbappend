FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://bsp.cfg"
KERNEL_FEATURES:append = " bsp.cfg"
SRC_URI += "file://user_2024-12-22-23-22-00.cfg \
            file://user_2024-12-23-16-05-00.cfg \
            file://user_2024-12-23-19-24-00.cfg \
            file://user_2024-12-24-04-25-00.cfg \
            file://user_2024-12-24-16-45-00.cfg \
            file://user_2024-12-25-23-21-00.cfg \
            file://user_2025-01-07-22-52-00.cfg \
            file://user_2025-01-09-09-46-00.cfg \
            file://user_2025-01-09-18-42-00.cfg \
            file://user_2025-01-10-23-34-00.cfg \
            file://user_2025-01-11-17-56-00.cfg \
            file://user_2025-01-12-04-49-00.cfg \
            file://user_2025-01-14-07-45-00.cfg \
            file://user_2025-01-15-22-51-00.cfg \
            file://user_2025-01-16-00-14-00.cfg \
            file://user_2025-01-16-23-22-00.cfg \
            file://user_2025-01-22-05-07-00.cfg \
            file://user_2025-01-22-18-23-00.cfg \
            file://user_2025-02-07-01-07-00.cfg \
            file://user_2025-02-07-01-34-00.cfg \
            file://user_2025-02-07-01-38-00.cfg \
            file://user_2025-02-07-01-44-00.cfg \
            file://user_2025-02-07-01-55-00.cfg \
            "
          

