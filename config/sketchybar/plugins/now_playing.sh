#!/bin/bash
. $CONFIG_DIR/variables/colors.sh

# File paths
LAST_TRACK_FILE="/tmp/last_now_playing_track.txt"
SCROLL_POS_FILE="/tmp/now_playing_scroll_pos.txt"

# Function to get the current playing track
get_current_track() {
    local artist=$(/opt/homebrew/bin/nowplaying-cli get artist)
    local title=$(/opt/homebrew/bin/nowplaying-cli get title)

    # Check if the track or artist is not available
    if [ "$artist" = "null" ] || [ "$title" = "null" ]; then
        echo ""
    else
        # Combine artist and title
        echo "$artist - $title"
    fi
}

# Function to scroll text
scroll_text() {
    local text="$1"
    local scroll_pos=$2
    local max_length=39

    # Determine if scrolling is needed
    if [ ${#text} -le $max_length ]; then
        echo "$text"
    else
        # Append text for looping effect
        local extended_text="$text | $text"
        local start=$((scroll_pos % (${#text} + 3))) # +3 for " | "
        local scrolled_text="${extended_text:$start:$max_length}"
        echo "$scrolled_text"
    fi
}

# Read the current playing track
CURRENT_TRACK=$(get_current_track)

# Read the last played track from file
LAST_TRACK=$(cat "$LAST_TRACK_FILE" 2>/dev/null || echo "")

# Determine if update is needed
if [ "$CURRENT_TRACK" != "$LAST_TRACK" ] || ! [ -f "$SCROLL_POS_FILE" ]; then
    echo "$CURRENT_TRACK" >"$LAST_TRACK_FILE"
    echo 0 >"$SCROLL_POS_FILE"
fi

# Read current scroll position
SCROLL_POS=$(cat "$SCROLL_POS_FILE")

# Scroll the text
SCROLLED_TEXT=$(scroll_text "$CURRENT_TRACK" "$SCROLL_POS")

# Update the SketchyBar item
sketchybar --set $NAME label="$SCROLLED_TEXT"
sketchybar --set $NAME icon="󰎄"
sketchybar --set $NAME icon.color="$SBC_GREEN"
sketchybar --set $NAME icon.padding_left=10;

if [ -z "$SCROLLED_TEXT" ]; then
  sketchybar --set $NAME icon.padding_right=0;
fi


# Update scroll position
if [ ${#CURRENT_TRACK} -gt 39 ]; then
    ((SCROLL_POS++))
    if [ $SCROLL_POS -ge ${#CURRENT_TRACK} ]; then
        SCROLL_POS=0
    fi
    echo $SCROLL_POS >"$SCROLL_POS_FILE"
fi
