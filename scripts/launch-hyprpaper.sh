#!/bin/bash

if [[ ! $(pidof hyprpaper) ]]; then
	hyprpaper
fi

wallpaper_path="$HOME/Downloads/arch-black-4k.png"
monitors="$(hyprctl monitors | grep Monitor | awk '{print $2}')"

hyprctl hyprpaper preload $wallpaper_path
for mon in $monitors; do 
	hyprctl hyprpaper wallpaper "$mon,$wallpaper_path"
done
