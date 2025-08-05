#!/bin/bash

# Wi-Fi Monitor Mode Toggle Script
# Author: dujs.
# Description: Toggle Wi-Fi between Managed and Monitor mode (no MAC randomization)

INTERFACE=$(iw dev | awk '$1=="Interface"{print $2}')
if [ -z "$INTERFACE" ]; then
  echo "❌ No wireless interface found."
  exit 1
fi

MODE=$(iw dev "$INTERFACE" info | awk '/type/ {print $2}')

if [ "$MODE" = "managed" ]; then
  echo "🔄 Switching $INTERFACE to Monitor mode..."
  sudo ip link set "$INTERFACE" down
  sudo iw dev "$INTERFACE" set type monitor
  sudo ip link set "$INTERFACE" up
  notify-send "Wi-Fi Mode" "$INTERFACE is now in Monitor mode"
elif [ "$MODE" = "monitor" ]; then
  echo "🔄 Switching $INTERFACE to Managed mode..."
  sudo ip link set "$INTERFACE" down
  sudo iw dev "$INTERFACE" set type managed
  sudo ip link set "$INTERFACE" up
  notify-send "Wi-Fi Mode" "$INTERFACE is now in Managed mode"
else
  echo "❌ Unknown mode: $MODE"
  exit 1
fi
