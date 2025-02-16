#!/usr/bin/env bash

CONFIG_FILE="$HOME/mac_dotfiles/hypr/.config/hypr/hyprland.conf"

GAP_VALUE=$(grep "gaps_out" $CONFIG_FILE | awk -F'=' '{print $2}' | tr -d ' ' )
VERTICAL_PADDING=550

echo $GAP_VALUE

if [ "$GAP_VALUE" == "8,$VERTICAL_PADDING" ]; then
    echo "Remove Vertical Padding"
    sed -i "s/gaps_out = 8, *$VERTICAL_PADDING/gaps_out = 8/" "$CONFIG_FILE"
else
    echo "Add Vertical Padding of $VERTICAL_PADDING"
    sed -i "s/gaps_out = 8/gaps_out = 8, $VERTICAL_PADDING/" "$CONFIG_FILE"
fi
