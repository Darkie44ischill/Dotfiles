#!/bin/bash

chosen=$(printf "🔒 Lock\n🔄 Reboot\n⏻ Shutdown" | rofi -dmenu -i -p "Power")
case "$chosen" in
  "🔒 Lock") hyprlock ;;
  "🔄 Reboot") reboot ;;
  "⏻ Shutdown") poweroff ;;
esac
