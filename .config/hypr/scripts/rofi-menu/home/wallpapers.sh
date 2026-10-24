#!/bin/bash
WALLPAPERS_DIR=$HOME/.config/hypr/images/wallpapers
WALLPAPER=$(ls $WALLPAPERS_DIR)

NB_WALLPAPER=$(($(echo $WALLPAPER | grep -o ' ' | wc -l)+1))

for i in $(seq 1 $NB_WALLPAPER)
do 
    WALLPAPERS[ $i ]=$(echo $WALLPAPER | cut -d " " -f $i)
done

NEW_WALLPAPER=$(printf "%s\n" "${WALLPAPERS[@]}" | rofi -dmenu -p)

hyprctl notify 2 1000 "rgb(008080)" "fontsize:100 Wallpaper switch"
awww img --transition-type random $WALLPAPERS_DIR/$NEW_WALLPAPER
