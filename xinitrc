feh --bg-scale Afbeeldingen/bonsaiempire-AUTUMN.JPG
urxvtd &
# Make sure this is before the 'exec' command or it won't be executed.
[ -f /etc/xprofile ] && . /etc/xprofile
[ -f ~/.xprofile ] && . ~/.xprofile
exec dbus-launch --exit-with-session --sh-syntax xmonad
