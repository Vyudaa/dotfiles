#!/bin/bash

CONFIG_FILES="$HOME/.config/waybar/config.jsonc $HOME/.config/waybar/styles.css"
CONFIG_FILE="$HOME/.config/waybar/config.jsonc"
STYLE_FILE="$HOME/.config/waybar/styles.css"

trap "killall waybar" EXIT

while true; do
    waybar -c $CONFIG_FILE -s $STYLE_FILE &
    inotifywait -e create,modify $CONFIG_FILES
    killall waybar
done
