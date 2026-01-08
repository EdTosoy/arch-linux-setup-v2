#!/usr/bin/bash

# State file to store the toggle mode (0 or 1)
STATE_FILE="/tmp/i3blocks_ora_state"

# Initialize state file if it doesn't exist
if [ ! -f "$STATE_FILE" ]; then
    echo "0" > "$STATE_FILE"
fi

# Function to toggle state
toggle_state() {
    current_state=$(cat "$STATE_FILE")
    if [ "$current_state" == "0" ]; then
        echo "1" > "$STATE_FILE"
    else
        echo "0" > "$STATE_FILE"
    fi
}

# Handle click event
if [ "$BLOCK_BUTTON" == "1" ]; then
    toggle_state
fi

# Read current state and display time
current_state=$(cat "$STATE_FILE")

if [ "$current_state" == "0" ]; then
    date '+%a %d %b %H:%M'
else
    date '+%H:%M'
fi
