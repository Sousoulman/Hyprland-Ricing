-- Load the variable
require("configs/variable")

-- Bind apps
hl.bind("SUPER + D", hl.dsp.exec_cmd(discordLauncher))
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + E", hl.dsp.exec_cmd(fileManager))
hl.bind("SUPER + O", hl.dsp.exec_cmd(notes))
hl.bind("SUPER + T", hl.dsp.exec_cmd(textedit))
hl.bind("SUPER + space", hl.dsp.exec_cmd(menu))
hl.bind("SUPER + B", hl.dsp.exec_cmd(browser))
hl.bind("SUPER + M", hl.dsp.exec_cmd("hyprlock"))
hl.bind("SUPER + S", hl.dsp.exec_cmd("steam"))
hl.bind("SUPER + A", hl.dsp.exec_cmd("bash "..scripts.."/rofi-menu/open-custom-rofi.sh"))

-- Bind basic functions
hl.bind("SUPER + SHIFT + Q", hl.dsp.window.close(activewindow))
hl.bind("SUPER + F", hl.dsp.window.fullscreen(activewindow))
hl.bind("SUPER + V", hl.dsp.window.float(activewindow))
hl.bind("SUPER + P", hl.dsp.window.pseudo(activewindow))

-- Bind screenshot functions
hl.bind("SUPER + PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind("SUPER + SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Bind windows focus 
hl.bind("SUPER + H", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + J", hl.dsp.focus({direction = "down"}))
hl.bind("SUPER + K", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + L", hl.dsp.focus({direction = "right"}))

-- Bind windows move 
hl.bind("SUPER + SHIFT + H", hl.dsp.window.move({direction = "left"}))
hl.bind("SUPER + SHIFT + K", hl.dsp.window.move({direction = "up"}))
hl.bind("SUPER + SHIFT + J", hl.dsp.window.move({direction = "down"}))
hl.bind("SUPER + SHIFT + L",hl.dsp.window.move({direction = "right"}))

-- Bind workspace switching 
hl.bind("SUPER + ampersand", hl.dsp.focus({workspace = 1}))
hl.bind("SUPER + eacute", hl.dsp.focus({workspace = 2}))
hl.bind("SUPER + quotedbl", hl.dsp.focus({workspace = 3}))
hl.bind("SUPER + apostrophe", hl.dsp.focus({workspace = 4}))
hl.bind("SUPER + parenleft", hl.dsp.focus({workspace = 5}))
hl.bind("SUPER + minus", hl.dsp.focus({workspace = 6}))
hl.bind("SUPER + egrave", hl.dsp.focus({workspace = 7}))
hl.bind("SUPER + underscore", hl.dsp.focus({workspace = 8}))
hl.bind("SUPER + ccedilla", hl.dsp.focus({workspace = 9}))
hl.bind("SUPER + agrave", hl.dsp.focus({workspace = 10}))

-- Bind windows workspace's moving 
hl.bind("SUPER + SHIFT + ampersand", hl.dsp.window.move({workspace = 1}))
hl.bind("SUPER + SHIFT + eacute", hl.dsp.window.move({workspace = 2}))
hl.bind("SUPER + SHIFT + quotedbl", hl.dsp.window.move({workspace = 3}))
hl.bind("SUPER + SHIFT + apostrophe", hl.dsp.window.move({workspace = 4}))
hl.bind("SUPER + SHIFT + parenleft", hl.dsp.window.move({workspace = 5}))
hl.bind("SUPER + SHIFT + minus", hl.dsp.window.move({workspace = 6}))
hl.bind("SUPER + SHIFT + egrave", hl.dsp.window.move({workspace = 7}))
hl.bind("SUPER + SHIFT + underscore", hl.dsp.window.move({workspace = 8}))
hl.bind("SUPER + SHIFT + ccedilla", hl.dsp.window.move({workspace = 9}))
hl.bind("SUPER + SHIFT + agrave", hl.dsp.window.move({workspace = 10}))

-- Bind move and resize for floating window
hl.bind("SUPER + mouse:272", hl.dsp.window.drag())
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

-- Bind sound
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("hyprctl hyprsunset gamma +10"), { repeating = true, locked = true, })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("hyprctl hyprsunset gamma -10"), { repeating = true, locked = true, })
