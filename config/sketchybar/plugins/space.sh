#!/bin/sh

. $CONFIG_DIR/variables/colors.sh

# Assuming white is the default label color for unselected spaces
# Update these color codes if you use different ones
SELECTED_LABEL_COLOR="0xff000000"   # ARGB for black
UNSELECTED_LABEL_COLOR="0xffd3c6aa" # ARGB for white

if [ "$SELECTED" = "true" ]; then
    # If the space is selected, set label color to black
    sketchybar --set "$NAME" \
        background.drawing="$SELECTED" \
        icon.color="$SELECTED_LABEL_COLOR"
else
    # If the space is not selected, revert label color to white (or your default)
    sketchybar --set "$NAME" \
        background.drawing="$SELECTED" \
        icon.color="$UNSELECTED_LABEL_COLOR"
fi
