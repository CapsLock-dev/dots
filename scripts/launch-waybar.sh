#!/bin/bash 

CONFIG_FILES="$HOME/.config/waybar/config.jsonc $HOME/.config/waybar/style.css"

trap "killall waybar" EXIT

waybar &
while true; do
	inotifywait -e modify ${CONFIG_FILES}
	killall -SIGUSR2 waybar
	sleep 1
done
