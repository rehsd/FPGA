set -x

if [ $# == 1 ]; then
	petalinux-build
fi

cp ~/VivadoProjects/rehsdZynq/rehsdZynq.bit ~/petalinux20242/rehsdZynq/images/linux
cd /home/rich/petalinux20242/rehsdZynq/images/linux/
petalinux-package boot --format BIN --fsbl zynq_fsbl.elf --u-boot u-boot.elf --fpga rehsdZynq.bit --force

FOLDER_PATH1="/media/rich/BOOT"
if [ -d "$FOLDER_PATH1" ]; then
	sudo cp /home/rich/petalinux20242/rehsdZynq/images/linux/boot.scr /media/rich/BOOT
	sudo cp /home/rich/petalinux20242/rehsdZynq/images/linux/BOOT.BIN /media/rich/BOOT
	sudo cp /home/rich/petalinux20242/rehsdZynq/images/linux/image.ub /media/rich/BOOT
	sudo dd if=rootfs.ext4 of=/dev/sdb2
else
	echo "Expected to find /media/rich/BOOT, but did not!"
fi

cd /home/rich/petalinux20242/rehsdZynq/
set +x
