#!/bin/bash

PLUGIN_DIR="$CONFIG_DIR/plugins"
. $CONFIG_DIR/variables/colors.sh

# Function to get the current WiFi information
get_wifi_info() {
    # Fetch the current SSID
    SSID=$(networksetup -getairportnetwork en0 | cut -d ':' -f 2 | xargs)
    # Fetch WiFi signal strength and other details if necessary
    SIGNAL=$(system_profiler SPAirPortDataType | awk '/Signal\/Noise/{print $2}')

    # Display SSID and signal in the popup
    echo "Connected to: $SSID"
}

# Initial setup for the plugin item
sketchybar --set $NAME label.drawing=off \
    --set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
    --set $NAME popup.background.border_width=2 \
    --set $NAME popup.background.corner_radius=3 \
    --set $NAME popup.background.border_color=$SBC_BORDERS \
    --set $NAME popup.background.color=$SBC_POPUP_BACKGROUND

# Icon for WiFi
sketchybar --set $NAME icon="󰖩" icon.color="$SBC_GREEN" icon.font.size=18

# Get WiFi information for the popup
WIFI_INFO=$(get_wifi_info)

# Create popup item for WiFi details
sketchybar --add item wifi_info_popup popup.$NAME \
    --set wifi_info_popup label="$WIFI_INFO"
