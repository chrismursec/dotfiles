#!/bin/bash

. $CONFIG_DIR/variables/colors.sh

sketchybar \
	--set $NAME icon.font="SF Pro:Black:16.0" \
	--set $NAME label.drawing=off \
	--set $NAME padding_right=10 \
	--set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
	--set $NAME popup.background.border_width=2 \
	--set $NAME popup.background.corner_radius=3 \
	--set $NAME popup.background.border_color=$SBC_BORDERS \
	--set $NAME popup.background.color=$SBC_POPUP_BACKGROUND

APPLE_FUNCTIONS=("Preferences" "Activity" "Lock Screen")
for i in "${!APPLE_FUNCTIONS[@]}"; do
	func_id="apple_${APPLE_FUNCTIONS[i]// /_}"
	icon=""
	click_script=""
	case "${APPLE_FUNCTIONS[i]}" in
	"Preferences")
		icon=􀺽
		click_script="open -a 'System Preferences'"
		;;
	"Activity")
		icon=􀒓
		click_script="open -a 'Activity Monitor'"
		;;
	"Lock Screen")
		icon=􀒳
		click_script="pmset displaysleepnow"
		;;
	esac
	sketchybar --add item $func_id popup.apple_logo \
		--set $func_id icon=$icon \
		--set $func_id icon.padding_right=10 \
		--set $func_id icon.padding_left=10 \
		--set $func_id label.padding_right=10 \
		--set $func_id label="${APPLE_FUNCTIONS[i]}" \
		--set $func_id background.padding_left=5 \
		--set $func_id click_script="$click_script; sketchybar -m --set apple_logo popup.drawing=off"
done
