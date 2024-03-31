#!/bin/bash

# Display identifiers and their desired padding
EXTERNAL_MONITOR_UUID="86EF51F0-7EFD-4B91-A149-AC58EE0BC187"
EXTERNAL_PADDING=70
MACBOOK_UUID="37D8832A-2D66-02CA-B9F7-8F30A301B230"
MACBOOK_PADDING=25

# Current active display UUID
current_display_uuid=$(yabai -m query --displays --display | jq -r '.uuid')

# Apply padding based on the current display
if [ "$current_display_uuid" == "$EXTERNAL_MONITOR_UUID" ]; then
  yabai -m config top_padding $EXTERNAL_PADDING
elif [ "$current_display_uuid" == "$MACBOOK_UUID" ]; then
  yabai -m config top_padding $MACBOOK_PADDING
fi
