#!/bin/bash
MENU_DIR=$HOME/.config/hypr/scripts/rofi-menu/home
MENUS=$(ls $MENU_DIR)

NB_MENU=$(($(echo $MENUS | grep -o ' ' | wc -l)+1))

for i in $(seq 1 $NB_MENU)
do 
    MENU[ $i ]=$(echo $MENUS | cut -d " " -f $i)
done

OPEN_MENU=$(printf "%s\n" "${MENU[@]}" | rofi -dmenu -p)

bash $MENU_DIR/$OPEN_MENU
