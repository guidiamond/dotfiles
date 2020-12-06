#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll -l 30 \
        --delay 0.1 \
        --match-command "playerctl --player=playerctld status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true '/home/damndiamond/.config/polybar_ex/polybar-spotify/scroll_spotify_status.sh' &

wait
