#!/usr/bin/bash

pic_dir="~/anime_pictures"

while true; do
    for img in `eval find $pic_dir | shuf`; do
        feh --no-fehbg --bg-fill $img
        echo $img > /tmp/cur_bg
        sleep 60
    done
done
