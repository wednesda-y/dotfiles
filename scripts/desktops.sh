#!/bin/bash

# Open pipe with bpswm
pipe=$(bspc subscribe desktop -f)

# Delete pipe file after exit
trap "rm -f $pipe" EXIT

# If the pipe doesn't exist, print error
if [[ ! -p $pipe ]]; then
    echo "bpsc subscribe pipe missing"
    exit 1
fi



# Read input from bpsc subscribe
while true
do
    if read action monitor desktop <$pipe; then        
        if [[ "$action" == 'desktop_focus' ]]; then
            name=$(bspc query -D -d $desktop --names)
            notify-send "Switched to Desktop $name"
        fi
    fi
done


