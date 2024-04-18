#!/bin/sh

text="$(playerctl -p spotify_player metadata title) - $(playerctl -p spotify_player metadata artist)"
class="class"
percentage="100"

echo $text
