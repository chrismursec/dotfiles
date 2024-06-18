#!/bin/sh

. $CONFIG_DIR/variables/colors.sh

PERCENTAGE="$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)"
CHARGING="$(pmset -g batt | grep 'AC Power')"

if [ "$PERCENTAGE" = "" ]; then
  exit 0
fi

case "${PERCENTAGE}" in
9[0-9] | 100)
  ICON="󰁹"
  COLOR="${SBC_GREEN}"
  ;;
[6-8][0-9])
  ICON="󰁿"
  COLOR="${SBC_YELLOW}"
  ;;
[3-5][0-9])
  ICON="󰁾"
  COLOR="${SBC_ORANGE}"
  ;;
[1-2][0-9])
  ICON="󰁼"
  COLOR="${SBC_RED}"
  ;;
*)
  ICON="󰁼"
  COLOR="${SBC_RED}"
  ;;
esac

if [[ "$CHARGING" != "" ]]; then
  ICON="󰂄"
  COLOR="${SBC_BLUE}"
fi

# Update the SketchyBar item with the new icon, label, and color
sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" icon.font.size="18" label="${PERCENTAGE}%"
