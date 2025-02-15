# One-time setups...

set -x

cp /usr/bin/rehsd/* ~/
cp /usr/bin/doom1.wad ~/
cp /usr/bin/doom1b.wad ~/

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

alsactl restore

set +x

