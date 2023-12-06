#!/bin/bash

declare -A days

days=(
    ["Mon"]="Пн"
    ["Tue"]="Вт"
    ["Wed"]="Ср"
    ["Thu"]="Чт"
    ["Fri"]="Пт"
    ["Sat"]="Сб"
    ["Sun"]="Вс"
)

getDate () {
    day="${days[$(date +"%a")]}"
    date_return="$day, $(date +"%d.%m.%y | %T")"
}
getLayout () {
    str="$(xset -q | grep 'LED mask' | awk '{print $10}')"
    str2=${str:4:1}
    if (( $str2 == 1)); then
        layout_return="Ru"
    elif (( $str2 == 0 )); then
        layout_return="En"
    else
        layout_return="ERROR"
    fi
}

while true; do
    getDate
    getLayout
    xsetroot -name "$layout_return | $date_return"
    sleep 0.8
done
