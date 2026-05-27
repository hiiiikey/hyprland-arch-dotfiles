#!/bin/bash
# Read power draw from RAPL interface (typically package-0)
# The value is in microwatts, so we divide by 1000000 to get Watts
POWER=$(cat /sys/class/powercap/intel-rapl/intel-rapl:0/energy_uj 2>/dev/null)

if [ -z "$POWER" ]; then
    # Fallback for other hardware or if intel-rapl is not available
    # You may need to adjust the path based on your hardware
    echo "0 W"
else
    # Calculate current draw. Note: This simple example only shows total energy.
    # For instantaneous power, you need to track the delta over time.
    # A more robust script uses a background process or calculates delta.
    # Here is a simplified output format for Waybar JSON:
    echo "{\"text\": \"CPU: N/A\", \"class\": \"unknown\"}"
fi   
