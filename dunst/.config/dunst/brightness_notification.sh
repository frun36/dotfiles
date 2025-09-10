#!/bin/bash

BRIGHTNESS=$(brightnessctl --machine-readable | grep -o '[0-9]*%' | head -1)

dunstify -a "Brightness" -u low -r 9994 -i display-brightness "Brightness: $BRIGHTNESS"
