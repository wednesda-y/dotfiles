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
dunst -conf ~/.config/dunst/dunstrc &
export $(dbus-launch)

# Load hotkey daemon
sxhkd & 

# Fix java (IntelliJ IDEA) bug
wmname LG3D

# Run WM
exec bspwm -c ~/.config/bspwm/bspwmrc_nogaps

# For GNOME
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
