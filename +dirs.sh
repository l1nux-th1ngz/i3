#!/bin/bash

# Add XDG user directories
directories=(
    "$(xdg-user-dir DESKTOP)"
    "$(xdg-user-dir DOWNLOAD)"
    "$(xdg-user-dir TEMPLATES)"
    "$(xdg-user-dir PUBLICSHARE)"
    "$(xdg-user-dir DOCUMENTS)"
    "$(xdg-user-dir MUSIC)"
    "$(xdg-user-dir PICTURES)"
    "$(xdg-user-dir VIDEOS)"
    "$(xdg-user-dir Wallpapers)"
    "$(xdg-user-dir ScreenShots)"
    "$(xdg-user-dir Clones)"
    "$(xdg-user-dir Debs)"
)

# Add home folder
directories+=("$HOME")

# Print the list of directories
echo "List of directories:"
for dir in "${directories[@]}"; do
    echo "$dir"
done
