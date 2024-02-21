#!/bin/bash

PLUGIN_DIR="$CONFIG_DIR/plugins"

setup_apple_logo() {
	sketchybar --add item apple.logo left \
		--set apple.logo \
		icon=􀣺 \
		icon.font="SF Pro:Black:16.0" \
		label.drawing=off \
		padding_right=10 \
		click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
		popup.background.border_width=2 \
		popup.background.corner_radius=3 \
		popup.background.border_color=0xffffffff \
		popup.background.color=0xff1f2122

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
		sketchybar --add item $func_id popup.apple.logo \
			--set $func_id \
			icon=$icon \
			icon.padding_right=10 \
			icon.padding_left=10 \
			label.padding_right=10 \
			label="${APPLE_FUNCTIONS[i]}" \
			background.padding_left=5 \
			click_script="$click_script; sketchybar -m --set apple.logo popup.drawing=off"
	done
}

setup_apple_logo
