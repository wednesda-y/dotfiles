# Load Xresources
xrdb -merge ~/.Xresources &

#Don't use cross cursor on root window 
xsetroot -cursor_name arrow &

# Load colours
wal -R &
feh --bg-fill ~/wallpapers/city.jpg &


source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh
# Load hotkey daemon
sxhkd & 

# Run WM
exec bspwm 
