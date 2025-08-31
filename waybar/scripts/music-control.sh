#!/bin/bash

# Check if Spotify is running
if ! pgrep -x "spotify" > /dev/null; then
    exit 0
fi

case "$1" in
    "toggle")
        playerctl -p spotify play-pause
        ;;
    "next")
        playerctl -p spotify next
        ;;
    "prev")
        playerctl -p spotify previous
        ;;
    *)
        echo "Usage: $0 {toggle|next|prev}"
        exit 1
        ;;
esac 
