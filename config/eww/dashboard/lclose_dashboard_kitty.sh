set FILE "$HOME/.cache/eww_launch.dashboard"
set CFG"$HOME/.config/eww/dashboard"
EWW=`which eww`

printf "TEST"


{$EWW} --config "$CFG" close \
                background profile system clock uptime music github \
                reddit twitter youtube weather apps mail logout sleep reboot poweroff folders
rm "$FILE"


