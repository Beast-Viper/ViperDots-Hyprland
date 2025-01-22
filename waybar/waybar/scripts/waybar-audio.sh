
#!/bin/bash

# Get the default sink
DEFAULT_SINK=$(pactl info | grep 'Default Sink' | cut -d' ' -f3)

# Get the list of sinks and filter out the EasyEffects sink
SINKS=$(pactl list sinks short | grep -v 'easyeffects' | awk '{print $2}')

# If the default sink is not in the filtered list, use the first available sink
if ! echo "$SINKS" | grep -q "$DEFAULT_SINK"; then
    SINK=$(echo "$SINKS" | head -n 1)
else
    SINK=$DEFAULT_SINK
fi

# Output the sink name
echo "$SINK"
