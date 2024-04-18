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
    ;;
  [3-5][0-9])
    ICON="󰖀"
    ;;
  [1-9] | [1-2][0-9])
    ICON="󰕿"
    ;;
  *) ICON="󰖁" ;;
  esac

  sketchybar --set "$NAME" icon="$ICON" icon.color="$SBC_YELLOW" label="$VOLUME%"
fi
