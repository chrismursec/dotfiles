#!/bin/bash

# Configuration
PLUGIN_DIR="$CONFIG_DIR/plugins"
. $CONFIG_DIR/variables/colors.sh

# Function to get overall RAM usage
get_ram_usage() {
    # Fetch total memory in megabytes
    # total_mem=$(sysctl -n hw.memsize | awk '{print $1/1024/1024}') # Convert from bytes to MB

    # # Fetch various memory statuses from vm_stat
    # pages_active=$(vm_stat | grep "Pages active" | awk '{print $3}' | sed 's/\.//g')
    # pages_wired_down=$(vm_stat | grep "Pages wired down" | awk '{print $3}' | sed 's/\.//g')
    # pages_compressed=$(vm_stat | grep "Pages compressed" | awk '{print $3}' | sed 's/\.//g')

    # # Calculate used memory as the sum of active, wired down, and compressed pages (in MB)
    # used_mem=$(((pages_active + pages_wired_down + pages_compressed) * 4096 / 1024 / 1024))

    # Calculate percentage
    percent_used=$(
        vm_stat | awk '/Pages free:/ {free=$3} /Pages active:/ {active=$3} /Pages inactive:/ {inactive=$3} /Pages speculative:/ {speculative=$3} END {used=active + inactive + speculative; total=used + free; printf "%.2f%%\n", (used / total * 100)}'
    )
    echo "$percent_used"
}

# Update overall RAM usage
RAM_USAGE=$(get_ram_usage)
sketchybar --set $NAME label="${RAM_USAGE}" icon="󰍛" icon.color="$SBC_BLUE" icon.font.size=18 icon.padding_left=10

# Get RAM details for the dropdown
