#!/bin/bash

headphone_status=`amixer -c 0 contents | sed -n '/Headphone Mic Jack/,+2s/:.*=//p'`
[[ $headphone_status =~ on$ ]] && mt=Headphone || mt=Speaker

amixer set $mt $1
