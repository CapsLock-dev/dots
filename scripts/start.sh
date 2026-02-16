# !/bin/bash 
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
setxkbmap -option caps:none
xset s off; xset -dpms

#xinput --set-prop 'pointer:''HP, Inc HyperX Pulsefire Core' 'libinput Accel Profile Enabled' 0, 1
#xinput --set-prop 'pointer:''HP, Inc HyperX Pulsefire Core' 'libinput Accel Speed' -0.00
feh --no-fehbg --randomize --bg-fill ~/hdd/wallpapers/gruvbox

