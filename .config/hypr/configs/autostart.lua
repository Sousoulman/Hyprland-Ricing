require("configs/variable")


hl.on("hyprland.start", function ()
    -- Needed stuff
    hl.exec_cmd("xwaylandvideobridge")
    hl.exec_cmd("wl-paste -p --waste wl-copy -pc")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    -- Needed desktop stuff
    hl.exec_cmd("swaync")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("waybar")

    -- Apps
    hl.exec_cmd(terminal)
end)
