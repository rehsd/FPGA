set -x
cp ~/VivadoProjects/rehsdZynq/rehsdZynq.bit ~/petalinux20242/rehsdZynq
cp ~/VivadoProjects/rehsdZynq/rehsdZynq.bit ~/petalinux20242/rehsdZynq/images/linux
cp ~/VivadoProjects/rehsdZynq/rehsdZynq_BD_wrapper.xsa ~/petalinux20242/rehsdZynq
cp ~/VivadoProjects/rehsdZynq/rehsdZynq_BD_wrapper.xsa ~/petalinux20242
petalinux-config --get-hw-description=/home/rich/petalinux20242/ --silentconfig
petalinux-build -c device-tree -x cleansstate
set +x
