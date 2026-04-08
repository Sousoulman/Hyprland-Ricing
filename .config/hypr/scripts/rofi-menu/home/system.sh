#!/bin/bash

SYSTEM_ACTION=('shutdown' 'restart' 'lock')

ACTION=$(printf "%s\n" "${SYSTEM_ACTION[@]}" | rofi -dmenu)

case $ACTION in

    'shutdown')
        shutdown now
        ;;
    'restart')
        reboot
        ;;
    'lock')
        hyprlock
        ;;
esac
