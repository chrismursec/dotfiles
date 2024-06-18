#!/bin/bash

PLUGIN_DIR="$CONFIG_DIR/plugins"
PRLCTL_DIR="/usr/local/bin"
. $CONFIG_DIR/variables/colors.sh

# Your location, use a city name, airport code, etc.
LOCATION="stockport"

# Fetch weather data
weather=$(curl -s "wttr.in/${LOCATION}?format=3")

# Extract the weather icon
weather_icon=$(echo $weather | cut -d ' ' -f 2)

# Extract the temperature
temperature=$(echo $weather | cut -d ' ' -f 3)

# Map wttr.in icons to Nerd Font icons and define colors
case $weather_icon in
"☀️")
    nf_icon="󰖙" # clear sky
    icon_color="$SBC_YELLOW"
    ;;
"🌤️")
    nf_icon="󰖕" # few clouds
    icon_color="$SBC_LIGHT_GRAY"
    ;;
"⛅️")
    nf_icon="󰖐" # scattered clouds
    icon_color="$SBC_GRAY"
    ;;
"🌥️")
    nf_icon="󰖐" # broken clouds
    icon_color="$SBC_DARK_GRAY"
    ;;
"🌦️")
    nf_icon="󰖖" # shower rain
    icon_color="$SBC_BLUE"
    ;;
"🌧️")
    nf_icon="󰖖" # rain
    icon_color="$SBC_DARK_BLUE"
    ;;
"🌨️")
    nf_icon="󰼶" # snow
    icon_color="$SBC_WHITE"
    ;;
"🌩️")
    nf_icon="󰖓" # thunderstorm
    icon_color="$SBC_PURPLE"
    ;;
"🌫️")
    nf_icon="󰖑" # mist
    icon_color="$SBC_LIGHT_GRAY"
    ;;
*)
    nf_icon="󰖑" # default icon
    icon_color="$SBC_GRAY"
    ;;
esac

sketchybar --set $NAME label.drawing=on
sketchybar --set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle"
sketchybar --set $NAME popup.background.border_width=2
sketchybar --set $NAME popup.background.corner_radius=3
sketchybar --set $NAME popup.background.border_color=$SBC_BORDERS
sketchybar --set $NAME popup.background.color=$SBC_POPUP_BACKGROUND

# Update the SketchyBar item
sketchybar --set $NAME icon="$nf_icon" icon.font.size=18 icon.color="$icon_color" label="${temperature}"


# Create popup item for WiFi details
sketchybar --add item weather_info_popup popup.$NAME
