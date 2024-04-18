#!/bin/bash

PLUGIN_DIR="$CONFIG_DIR/plugins"
PRLCTL_DIR="/usr/local/bin"
. $CONFIG_DIR/variables/colors.sh

sketchybar --set $NAME label.drawing=off \
	--set $NAME click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
	--set $NAME popup.background.border_width=2 \
	--set $NAME popup.background.corner_radius=3 \
	--set $NAME popup.background.border_color=$SBC_AQUA \
	--set $NAME popup.background.color=$SBC_DARK_GREY

# Function to get the list of VMs
get_vm_list() {
	$PRLCTL_DIR/prlctl list --all | while IFS= read -r line; do
		uuid=$(echo "$line" | awk '{print $1}')
		status=$(echo "$line" | awk '{print $2}')
		name=$(echo "$line" | awk '{print $4}')

		if [[ $name =~ ^homestead-latest.* ]]; then
			name="Homestead"
		fi

		if [[ $name =~ ^vvv-local.* ]]; then
			name="VVV-Local"
		fi

		if [[ $name =~ ^vagrant_temp.* ]]; then
			name="Vagrant"
		fi

		if [[ $name != "NAME" ]]; then
			# Use printf to format with newline
			printf "%s - %s\n" "$name" "$status"
		fi

	done
}

# Count running VMs
RUNNING_VMS=$($PRLCTL_DIR/prlctl list --all | grep running | wc -l | tr -d '[:space:]')

# Update main item
sketchybar --set $NAME icon="" icon.color="$SBC_AQUA" label="$RUNNING_VMS"

# Get the list of VMs for the popup
VM_LIST=$(get_vm_list)

# Create a popup item for each VM
i=0
echo "$VM_LIST" | while IFS= read -r line; do
	sketchybar --add item vmlist_popup_$i popup.vmlist \
		--set vmlist_popup_$i label="$line"
	i=$((i + 1))
done
