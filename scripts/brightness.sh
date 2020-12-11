#!/bin/bash

echo $$ > /tmp/brightness.pid

update() {
    br=`light`
    br=${br%.*}
    icon=

    lv1='🌕'
    lv2='🌔'
    lv3='🌓'
    lv4='🌒'
    lv5='🌑'

    if [[ $br -gt 70 ]]; then
        icon=$lv1
    elif [[ $br -gt 50 ]]; then
        icon=$lv2
    elif [[ $br -gt 30 ]]; then
        icon=$lv3
    elif [[ $br -gt 10 ]]; then
        icon=$lv4
    else
        icon=$lv5
    fi

    echo "$icon $br%"
}

update
trap update int

while true; do
  sleep 10 &
  wait
done
