
#!/bin/bash

# Get power consumption using `acpi` or `cat /sys/class/power_supply/BAT0/power_now`
# Adjust the command based on your system's power supply interface
power=$(cat /sys/class/power_supply/BAT1/power_now) # in microwatts
power_w=$(echo "scale=2; $power / 1000000" | bc) # convert to watts

# Determine if discharging or charging
status=$(cat /sys/class/power_supply/BAT1/status)

if [[ "$status" == "Discharging" ]]; then
    echo "-$power_w W"
else
    echo "+$power_w W"
fi
