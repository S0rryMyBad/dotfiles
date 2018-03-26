# load bitmaps fonts
xset +fp /usr/share/fonts/artwiz-fonts
xset +fp /usr/share/fonts/misc
xset fp rehash

# wallpaper
hsetroot -solid '#4d5e63' &

# locale
export LC_ALL=en_US.UTF-8

# display
xcalib ~/.x230.icm &

# colors
xrdb ~/.Xresources

# bar
~/bin/boxbar &

# wm
exec dbus-launch openbox-session
