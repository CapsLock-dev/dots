# !/bin/bash 

kitty htop & disown
sleep 0.5
window_id=$(wmctrl -l | tail -1 | cut -f1 -d" ") 
wmctrl -i -r $window_id -t 7

kitty nvim ~/notes/todo & disown
sleep 0.5 
window_id=$(wmctrl -l | tail -1 | cut -f1 -d" ") 
wmctrl -i -r $window_id -t 8

kitty nvim ~/notes/tomorrow & disown
