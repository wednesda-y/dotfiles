# Load Xresources
xrdb -merge ~/.Xresources &

#Don't use cross cursor on root window 
xsetroot -cursor_name arrow &

# Load colours
wal -R &
feh --bg-fill ~/Pictures/papes/desktop/6f6e5109cf0a9c4c.jpg &

# redshift
redshift &

# Keybindings for volume
xbindkeys &

# Notification daemon
dunst &
export $(dbus-launch)

# Load hotkey daemon
sxhkd & 

# Run WM
exec bspwm -c ~/.config/bspwm/bspwmrc_nogaps
