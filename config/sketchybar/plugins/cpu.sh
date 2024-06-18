#!/bin/bash

# Configuration
PLUGIN_DIR="$CONFIG_DIR/plugins"
. $CONFIG_DIR/variables/colors.sh

# Function to get overall CPU usage
get_cpu_usage() {
    # MacOS command to fetch CPU usage
    overall_cpu=$(top -l 1 | grep "CPU usage" | awk '{print $3}' | sed 's/%//')

    # Format to ensure two digits before and after the decimal
    printf "%05.2f" $overall_cpu
}

# Initial setup for the main CPU usage item
sketchybar --set $NAME label.drawing=on \
    --set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
    --set $NAME popup.background.border_width=2 \
    --set $NAME popup.background.corner_radius=3 \
    --set $NAME popup.background.border_color=$SBC_BORDERS \
    --set $NAME popup.background.color=$SBC_POPUP_BACKGROUND

# Update overall CPU usage
CPU_USAGE=$(get_cpu_usage)
sketchybar --set $NAME label="${CPU_USAGE}%" icon="󰻠" icon.color="$SBC_AQUA" icon.font.size=18
