# One-time setups...

set -x

# X11 configuration
cp /usr/bin/rehsd/xorg.conf /usr/share/X11/xorg.conf.d/

cp /usr/bin/rehsd/asound.state /var/lib/alsa/
alsactl restore

echo "wm8960-snddrv" >> /etc/modules

reboot
