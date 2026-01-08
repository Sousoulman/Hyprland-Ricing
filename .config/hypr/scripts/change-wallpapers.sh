#!/bin/bash
DIR=$HOME/.config/hypr/images/wallpapers
WALLPAPER=$(ls $DIR)

i=0
while read line 
do 
	WALLPAPERS[ $i ]="$line"
	(( i++ ))
done < <(ls $DIR -ls)
QUERY=$(awww query)
CURRENT_WALLPAPER=${QUERY##*/}
WALLPAPERS=("${WALLPAPERS[@]/$CURRENT_WALLPAPER}")
NUM_WALLPAPER=${#WALLPAPERS[*]}
RANDOM_WALLPAPER=${WALLPAPERS[$RANDOM%$NUM_WALLPAPER]}
RANDOM_WALLPAPER_CUT=${RANDOM_WALLPAPER##* }
echo $RANDOM_WALLPAPER_CUT
echo $WALLPAPERS
awww img --transition-type random $DIR/$RANDOM_WALLPAPER_CUT
