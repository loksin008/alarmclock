#!/bin/bash

# Function to display a message and play a sound
alarm() {
    echo "Alarm ringing! lokesh wakeup!"
    # Play a sound (adjust the command based on your system)
    paplay /usr/share/sounds/freedesktop/stereo/complete.ogg
}

# Get the alarm time from user input
read -p "Set the alarm time (HH:MM): " alarm_time

# Convert alarm time to seconds since epoch
while true; do
    current_time=$(date +"%H:%M")
    if [ "$current_time" == "$alarm_time" ]; then
        alarm
        break
    fi
    sleep 30  # Check every 30 seconds 

done
