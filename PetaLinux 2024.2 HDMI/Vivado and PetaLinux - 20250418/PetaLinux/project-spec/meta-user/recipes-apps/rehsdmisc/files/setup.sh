# One-time setups...

set -x

# X11 configuration
# cp /usr/bin/rehsd/xorg.conf /usr/share/X11/xorg.conf.d/

cp /usr/bin/rehsd/asound.state /var/lib/alsa/
alsactl restore

cp /usr/bin/rehsd/weston.ini /etc/xdg/weston/

echo "wm8960-snddrv" >> /etc/modules

#!/bin/bash

# Add FRAMEBUFFER and DISPLAY variables to /etc/environment
# With these included, from Matchbox, Ctl-Alt-F1 will go to console,
# without these, Matchbox will go to Weston
grep -qxF "FRAMEBUFFER=/dev/fb0" /etc/environment || echo "FRAMEBUFFER=/dev/fb0" >> /etc/environment
grep -qxF "DISPLAY=/dev/fb0" /etc/environment || echo "DISPLAY=/dev/fb0" >> /etc/environment
grep -qxF "#DISPLAY=:0" /etc/environment || echo "#DISPLAY=:0" >> /etc/environment


sudo usermod -aG audio,video,wayland weston

reboot
