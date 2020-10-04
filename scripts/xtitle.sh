#!/bin/bash

while read xtit; do
    sed -e 's/^/ /' -e 's/-/\-/g' <<< $xtit
done < <(xtitle -st 114)
