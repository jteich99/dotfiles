#!/usr/bin/env zsh

killall -q polybar

# for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar mybar -c ~/.config/polybar/config.ini &
# done

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
        echo $m 
        MONITOR=$m polybar --reload mybar &
    done
else
    polybar --reload mybar &
fi


