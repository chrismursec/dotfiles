#!/bin/bash

# Configuration
MAX_LENGTH=40  # Maximum length of the displayed text
SCROLL_SPEED=2 # Number of characters to scroll each update (decreased from 5)

# File paths
LAST_TRACK_FILE="/tmp/last_now_playing_track.txt"
SCROLL_POS_FILE="/tmp/now_playing_scroll_pos.txt"

# Function to scroll the text
scroll_text() {
	local text="$1"
	local length=${#text}
	local scroll_pos=$2

	# Check if scrolling is needed
	if [ $length -le $MAX_LENGTH ]; then
		echo "$text"
		return
	fi

	# Append text with a space for smooth looping
	local looped_text="$text | $text"

	# Extract the substring to display
	local start=$((scroll_pos % length))
	local scrolled_text="${looped_text:$start:$MAX_LENGTH}"

	echo "$scrolled_text"
}

# Read the current artist and track
CURRENT_ARTIST="$(/opt/homebrew/bin/nowplaying-cli get artist)"
CURRENT_TRACK="$(/opt/homebrew/bin/nowplaying-cli get title)"

# Check if either the artist or the track title is "null"
if [ "$CURRENT_ARTIST" = "null" ] || [ "$CURRENT_TRACK" = "null" ]; then
	# Display a default message if nothing is playing
	CURRENT_COMBINED="No track playing"
else
	CURRENT_COMBINED="$CURRENT_ARTIST - $CURRENT_TRACK"
fi

# Read the last played track and scroll position
LAST_TRACK=$(cat "$LAST_TRACK_FILE" 2>/dev/null || echo "")
SCROLL_POS=$(cat "$SCROLL_POS_FILE" 2>/dev/null || echo 0)

# Update only if the track has changed or for scrolling
if [ "$CURRENT_COMBINED" != "$LAST_TRACK" ] || [ $SCROLL_POS -ne 0 ]; then
	# Scroll the text
	SCROLLED_TEXT=$(scroll_text "$CURRENT_COMBINED" $SCROLL_POS)

	# Update the SketchyBar item
	sketchybar --set $NAME label="$SCROLLED_TEXT"
	sketchybar --set $NAME icon="" icon.padding_left=40

	# Save the current track and update the scroll position
	echo "$CURRENT_COMBINED" >"$LAST_TRACK_FILE"
	((SCROLL_POS = (SCROLL_POS + SCROLL_SPEED) % ${#CURRENT_COMBINED}))

	# Reset scroll position to 0 if it reaches the end of the text
	if [ $SCROLL_POS -eq 0 ]; then
		echo 0 >"$SCROLL_POS_FILE"
	else
		echo $SCROLL_POS >"$SCROLL_POS_FILE"
	fi
fi
