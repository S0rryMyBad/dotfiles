#!/bin/sh

# display screen
xcalib ~/.x230.icm &

# pulseaudio daemon
pulseaudio -D &

# compton
optirun compton -b --config $HOME/.config/openbox/compton.conf

# mouse acceleration
xinput --set-prop 11 'libinput Accel Speed' -1 &

# disable touchpad
xinput --set-prop 13 'Device Enabled' 0 &

# touchpad tweaks
#xinput --set-prop 12 'libinput Accel Speed' -1 &
#xinput --set-prop 12 'libinput Tapping Enabled' 1 &

# wallpaper
#feh --bg-fill ~/pics/wallpaper/redline.jpg &

# bar
$HOME/bin/bar &
#slstatus &

# set random wallpaper
xrdb -merge "${HOME}/.Xresources"

# wal & colorscheme
wal -R -o wal-set

# window manager
#exec startxfce4
exec ck-launch-session dbus-launch openbox-session
#exec dwm
