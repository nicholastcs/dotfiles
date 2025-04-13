#!/usr/bin/env bash
hypridle &

swayosd-server &

wl-paste --type text --watch cliphist store &

wl-paste --type image --watch cliphist store &

swww-daemon &

swww img ~/Wallpapers/retro_city.gif &

waybar
