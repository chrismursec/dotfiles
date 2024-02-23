#!/bin/bash

  . $CONFIG_DIR/variables/colors.sh

# Run the Node.js script
output=$(node --no-warnings ~/Developer/github/binday/main.js)

# Remove 'green bin' from the output
output=${output//Green bin/}

# Initialize COLOR variable
COLOR=""

# Check for bin types and determine color
if [[ $output == *"Blue bin"* ]]; then
    COLOR=$SBC_BLUE
elif [[ $output == *"Black bin"* ]]; then
    COLOR=$SBC_WHITE
elif [[ $output == *"Brown bin"* ]]; then
    COLOR=$SBC_BROWN
fi

# Set the icon and color if a bin color was determined
if [ -n "$COLOR" ]; then
    sketchybar --set "$NAME" icon="" icon.color="$COLOR"
else
    sketchybar --set "$NAME" icon="" icon.color=""
fi
