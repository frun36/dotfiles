#!/bin/zsh

VOLUME=$(pamixer --get-volume)
MUTED=$(pamixer --get-mute)

if [ "$MUTED" = "true" ]; then
    dunstify -a "Volume" -u low -r 9993 -i audio-volume-muted "Volume: Muted"
else
    dunstify -a "Volume" -u low -r 9993 -i audio-volume-high "Volume: ${VOLUME}%"
fi
