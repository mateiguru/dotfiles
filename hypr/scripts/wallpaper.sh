#!/bin/bash

# Check if an argument is provided
if [ -z "$1" ]; then
    echo "Error: No wallpaper image provided."
    exit 1
else
    wallpaper=$1
fi

used_wallpaper=$wallpaper
echo ":: Setting wallpaper with original image $wallpaper"
tmp_wallpaper=$wallpaper

echo ":: Execute pywal with $used_wallpaper"
wal -q -i "$used_wallpaper"
source "$HOME/.cache/wal/colors.sh"

# Reset Waybar to reflect changes
~/.config/hypr/scripts/waybar_reset.sh

swww restore