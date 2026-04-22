MONITORS_DIRECTORY=~/.config/hypr/configs/monitors.conf
ALL_MONITORS=$(cat $MONITORS_DIRECTORY | cut -d, -f1 -s | cut -d= -f2)
CHOOSEN_MONITORS=$(printf "%s\n" "${ALL_MONITORS[@]}" | rofi -dmenu)
MONITORS_LINE=$(cat $MONITORS_DIRECTORY | grep -n $CHOOSEN_MONITORS | cut -d: -f1)

SCREEN_ACTION=('refresh rate' 'resolution')
ACTION=$(printf "%s\n" "${SCREEN_ACTION[@]}" | rofi -dmenu)

case $ACTION in
    'refresh rate')
        ALL_REFRESH_RATE=('60' '120' '144' '180')
        NEW_SETTINGS=$(printf "%s\n" "${ALL_REFRESH_RATE[@]}" | rofi -dmenu)
        ACTUAL_SETTINGS=$(cat $MONITORS_DIRECTORY | grep $CHOOSEN_MONITORS | cut -d@ -f2 -s | cut -d, -f1)
        ;;   
    'resolution')
        ALL_RESOLUTION=('1280x720' '1920x1080' '2560x1440' '3840x2160')
        NEW_SETTINGS=$(printf "%s\n" "${ALL_RESOLUTION[@]}" | rofi -dmenu)
        ACTUAL_SETTINGS=$(cat $MONITORS_DIRECTORY | grep $CHOOSEN_MONITORS | cut -d@ -f1 -s | cut -d, -f2)
        ;;
esac

sed -i "$MONITORS_LINE s/$ACTUAL_SETTINGS/$NEW_SETTINGS/" "$MONITORS_DIRECTORY"
