#!/bin/bash

echo "Script executed with argument: $1" >> /tmp/volume_debug.log

SINK_ID=$(wpctl status | grep -i "Nothing Ear" | grep "\[vol:" | awk '{print $3}')

echo "Using Sink ID: $SINK_ID" >> /tmp/volume_debug.log

case "$1" in
    up) wpctl set-volume "$SINK_ID" 5%+ ;;
    down) wpctl set-volume "$SINK_ID" 5%- ;;
    mute) wpctl set-mute "$SINK_ID" toggle ;;
    *) echo "Invalid argument: $1" >> /tmp/volume_debug.log ;;
esac
