#!/bin/bash

# Your location, use a city name, airport code, etc.
LOCATION="stockport"

# Fetch weather data
weather=$(curl -s "wttr.in/${LOCATION}?format=3")

# Extract the weather icon
weather_icon=$(echo $weather | cut -d ' ' -f 2)

# Extract the temperature
temperature=$(echo $weather | cut -d ' ' -f 3)

sketchybar --set $NAME icon="$weather_icon" icon.font.size=14 label=${temperature}
