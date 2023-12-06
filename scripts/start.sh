# !/bin/bash
setxkbmap -model pc105 -layout us,ru -option grp:alt_shift_toggle
setxkbmap -option caps:none

for entry in "/home/capslock/scripts/start"/*
do 
    name=$(basename "$entry")

    arr=( $(pgrep -f "$entry") )
    length=${#arr[@]}

    if (( $length > 0 )); then
        echo "Skipped $name"
        continue
    fi
    echo "Launched $name"
    /bin/bash $entry
done
