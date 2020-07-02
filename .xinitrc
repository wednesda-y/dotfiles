# Load Xresources
xrdb -merge ~/.Xresources &

#Don't use cross cursor on root window 
xsetroot -cursor_name arrow &

# Load colours
wal -R

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

# run Polybar
~/.config/polybar/launch.sh

# run compositor
compton -c &

# Run WM
exec bspwm -c ~/.config/bspwm/bspwmrc

# For GNOME
#export XDG_SESSION_TYPE=x11
#export GDK_BACKEND=x11
#exec gnome-session
