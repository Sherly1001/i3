#!/bin/bash

v_high='🔊'
v_mid='🔉'
v_low='🔈'
v_mute='🔇'

icon='🔉'
[[ `~/.config/i3/scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker
vl="$(amixer get $mt | sed -n '/\[/{s/.*\[\(.*\)%.*/\1/p; q0}')"

if [[ $(amixer get Master | grep '\[off\]') ]]; then
    icon=$v_mute
elif [[ $vl -le 30 ]]; then
    icon=$v_low
elif [[ $vl -le 70 ]]; then
    icon=$v_mid
else
    icon=$v_high
fi

echo "$icon $vl"
