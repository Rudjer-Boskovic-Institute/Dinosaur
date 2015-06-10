#!/bin/bash
SOUNDS_DIR="/home/nix/work/IRB/OUIS/Otvoreni_dani/Dinosaur/sounds"
DELAY=5

lockfile -r 0 /tmp/dino.lock || exit 1
mplayer $(find $SOUNDS_DIR -type f |shuf -n 1)
sleep $DELAY

rm -f /tmp/dino.lock
