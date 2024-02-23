#!/bin/bash

# Your location, use a city name, airport code, etc.
LOCATION="stockport"

# Fetch weather data
weather=$(curl -s "wttr.in/${LOCATION}?format=3")

# Extract the weather icon
weather_icon=$(echo $weather | cut -d ' ' -f 2)

# Extract the temperature
temperature=$(echo $weather | cut -d ' ' -f 3)

# Map wttr.in icons to Nerd Font icons
case $weather_icon in
"☀️") nf_icon="" ;; # clear sky
"🌤️") nf_icon="" ;; # few clouds
"⛅️") nf_icon="" ;; # scattered clouds
"🌥️") nf_icon="" ;; # broken clouds
"🌦️") nf_icon="" ;; # shower rain
"🌧️") nf_icon="" ;; # rain
"🌨️") nf_icon="" ;; # snow
"🌩️") nf_icon="" ;; # thunderstorm
"🌫️") nf_icon="󰖑" ;; # mist
*) nf_icon="" ;;    # default icon
esac

# Update the SketchyBar item
sketchybar --set $NAME icon="$nf_icon" icon.font.size=14 label="${temperature}"
