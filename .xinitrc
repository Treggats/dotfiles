xrdb -merge ~/.Xresources
urxvtd &
xsetroot -cursor_name left_ptr
exec dbus-launch --exit-with-session --sh-syntax xmonad
feh --bg-scale Afbeeldingen/bonsaiempire-AUTUMN.JPG
