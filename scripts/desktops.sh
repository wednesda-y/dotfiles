#!/bin/bash

# Open pipe with bpswm
pipe=$(bspc subscribe desktop monitor -f)

# Delete pipe file after exit
trap "rm -f $pipe" EXIT

# If the pipe doesn't exist, print error
if [[ ! -p $pipe ]]; then
    echo "bpsc subscribe pipe missing"
    exit 1
fi

# Read input from bpsc subscribe
while true;
do
    if read action monitor desktop <$pipe; then        
        if [[ "$action" == 'desktop_focus' ]]; then
            name=$(bspc query -D -d $desktop --names)
            notify-send \
                --hint=string:x-dunst-stack-tag:bspwm \
                "Switched to Desktop $name" 

        elif [[ "$action" == 'monitor_remove' ]]; then
            exit 0
        fi
    fi
done


