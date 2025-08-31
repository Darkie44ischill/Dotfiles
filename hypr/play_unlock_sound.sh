#!/bin/bash

# wait for Hyprlock to finish
 while pgrep -x hyprlock > /dev/null; do
     sleep 0.2
 done

# slight delay to ensure pipewire is ready again
 sleep 0.5

# Play sound
 pw-play ~/.config/hypr/sounds/intro.wav

