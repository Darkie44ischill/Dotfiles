#!/bin/bash

# Get battery percentage (works for most laptops)
battery_level=$(cat /sys/class/power_supply/BAT*/capacity)

# If battery <= 10% and not charging
charging_status=$(cat /sys/class/power_supply/BAT*/status)

if [ "$battery_level" -le 10 ] && [ "$charging_status" != "Charging" ]; then
    # Play sound alert
    paplay ~/Downloads/lowfuel.wav
fi
