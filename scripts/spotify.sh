#!/bin/sh

text="$(playerctl -p spotify metadata title) - $(playerctl -p spotify metadata artist)"
class="class"
percentage="100"

echo $text
