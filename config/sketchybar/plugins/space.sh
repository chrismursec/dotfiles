#!/bin/sh

. $CONFIG_DIR/variables/colors.sh

SELECTED_LABEL_COLOR=$SBC_CLUE
UNSELECTED_LABEL_COLOR=$SBC_TEXT

if [ "$SELECTED" = "true" ]; then
    sketchybar --set "$NAME" \
        icon.color="$SBC_BLUE"
else
    sketchybar --set "$NAME" \
        icon.color="$UNSELECTED_LABEL_COLOR"
fi
