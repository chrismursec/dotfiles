#!/bin/bash

PLUGIN_DIR="$CONFIG_DIR/plugins"
. $CONFIG_DIR/variables/colors.sh

# Function to get the list of connected Bluetooth devices
get_bluetooth_info() {
    # Make sure blueutil is installed
    if ! command -v blueutil &>/dev/null; then
        echo "blueutil could not be found, please install it using Homebrew: brew install blueutil"
        return
    fi

    # Check if Bluetooth is on
    if [ "$(blueutil -p)" == "0" ]; then
        echo "Bluetooth is off"
        return
    fi

    # Fetch list of connected Bluetooth devices
    echo "Connected Bluetooth Devices:"
    blueutil --paired --format json | jq -r '.[] | select(.connected == true) | .name'
}

# Initial setup for the plugin item
sketchybar --set $NAME label.drawing=off \
    --set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
    --set $NAME popup.background.border_width=2 \
    --set $NAME popup.background.corner_radius=3 \
    --set $NAME popup.background.border_color=$SBC_BORDERS \
    --set $NAME popup.background.color=$SBC_POPUP_BACKGROUND

# Icon for Bluetooth

ICON="󰂯"

if [ "$(blueutil -p)" == "0" ]; then
ICON="󰂲"
fi


sketchybar --set $NAME icon="$ICON" icon.color="$SBC_BLUE" icon.font.size=18


# Get Bluetooth information for the popup
BLUETOOTH_INFO=$(get_bluetooth_info)

# Create popup item for Bluetooth details
sketchybar --add item bluetooth_info_popup popup.$NAME \
    --set bluetooth_info_popup label="$BLUETOOTH_INFO"
