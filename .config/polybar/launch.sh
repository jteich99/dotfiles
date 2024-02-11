#!/usr/bin/env zsh

killall -q polybar

for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar mybar -c ~/.config/polybar/config.ini &
done

# polybar mybar -c ~/.config/polybar/config.ini 
