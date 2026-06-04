MONITORS_DIRECTORY=~/.config/hypr/configs/monitors.lua
ALL_MONITORS=$(cat $MONITORS_DIRECTORY | grep output | cut -d"\"" -f2)
CHOOSEN_MONITORS=$(printf "%s\n" "${ALL_MONITORS[@]}" | rofi -dmenu)
MONITORS_LINE=$(cat $MONITORS_DIRECTORY | grep -n $CHOOSEN_MONITORS | cut -d: -f1)

SCREEN_ACTION=('refresh rate' 'resolution')
ACTION=$(printf "%s\n" "${SCREEN_ACTION[@]}" | rofi -dmenu)

case $ACTION in
    'refresh rate')
        ALL_REFRESH_RATE=('60' '120' '144' '180')
        NEW_SETTINGS=$(printf "%s\n" "${ALL_REFRESH_RATE[@]}" | rofi -dmenu)
        OPTION_LINE=$(($MONITORS_LINE+1))
        ACTUAL_SETTINGS=$(sed "$OPTION_LINE!d" $MONITORS_DIRECTORY| cut -d"\"" -f2 | cut -d@ -f2) 
        ;;   
    'resolution')
        ALL_RESOLUTION=('1280x720' '1920x1080' '2560x1440' '3840x2160')
        NEW_SETTINGS=$(printf "%s\n" "${ALL_RESOLUTION[@]}" | rofi -dmenu)
        OPTION_LINE=$(($MONITORS_LINE+1))
        ACTUAL_SETTINGS=$(sed "$OPTION_LINE!d" $MONITORS_DIRECTORY | cut -d"\"" -f2 | cut -d@ -f1)
        echo $ACTUAL_SETTINGS
        ;;
esac

sed -i "$OPTION_LINE s/$ACTUAL_SETTINGS/$NEW_SETTINGS/" "$MONITORS_DIRECTORY"
