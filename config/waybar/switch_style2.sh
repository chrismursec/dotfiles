#!/bin/bash
killall waybar
SDIR="$HOME/.config/waybar"
waybar -c "$SDIR"/config2 -s "$SDIR"/style2.css &
swaymsg gaps outer all set 10 && swaymsg gaps inner all set 10
