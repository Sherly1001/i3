#!/bin/bash

[[ `~/.config/i3/scripts/status/headphone.sh` == 'on' ]] && mt=Headphone || mt=Speaker

amixer set $mt $1
