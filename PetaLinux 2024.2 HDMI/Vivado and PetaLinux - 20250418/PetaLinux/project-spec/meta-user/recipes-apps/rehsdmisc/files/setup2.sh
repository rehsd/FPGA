# One-time setups...

set -x

cp /usr/bin/rehsd/*.sh ~/

# Sound configuration
cat <<EOF > ~/.asoundrc
pcm.!default {
    type hw
    card 0
}

ctl.!default {
    type hw
    card 0
}
EOF

/usr/sbin/alsactl restore

echo "alias ls='ls --color=auto'" >> ~/.bashrc
source ~/.bashrc

set +x

