#!/bin/bash


FILE="$HOME/.cache/eww_launch.dashboard"
CFG="$HOME/.config/eww/dashboard"
EWW=`which eww`

print "TEST"


${EWW} --config "$CFG" close \
                background profile system clock uptime music github \
                reddit twitter youtube weather apps mail logout sleep reboot poweroff folders
rm "$FILE"


killall `ps -aux | grep /.config/eww/dashboard/eww_launch.dashboard | grep -v grep | awk '{ print $1 }'` && killall inotifywait
pkill eww
pkill eww_launch

eww close-all
eww kill
