#!/bin/sh

# The volume_change event supplies a $INFO variable in which the current volume
# percentage is passed to the script.

PLUGIN_DIR="$CONFIG_DIR/plugins"
PRLCTL_DIR="/usr/local/bin"
. $CONFIG_DIR/variables/colors.sh

if [ "$SENDER" = "volume_change" ]; then
  VOLUME="$INFO"

  case "$VOLUME" in
  [6-9][0-9] | 100)
    ICON="󰕾"
    COLOR="${SBC_RED}"
    ;;
  [3-5][0-9])
    ICON="󰖀"
    COLOR="${SBC_GREEN}"
    ;;
  [1-9] | [1-2][0-9])
    ICON="󰕿"
    COLOR="${SBC_YELLOW}"
    ;;
  *)
    ICON="󰖁"
    COLOR="${SBC_PURPLE}"
    ;;
  esac

  sketchybar --set "$NAME" icon="$ICON" icon.color="$COLOR" icon.font.size="18" label="$VOLUME%"
fi
