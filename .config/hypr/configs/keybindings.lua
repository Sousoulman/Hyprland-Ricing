-- Load the variable
require("configs/variable")

-- Bind apps
hl.bind(mainMod.."+ D", hl.dsp.exec_cmd(discordLauncher))
hl.bind(mainMod.."+ RETURN", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod.."+ E", hl.dsp.exec_cmd(fileManager))
hl.bind(mainMod.."+ SHIFT", hl.dsp.exec_cmd(fileManagert))
hl.bind(mainMod.."+ O", hl.dsp.exec_cmd(notes))
hl.bind(mainMod.."+ T", hl.dsp.exec_cmd(textedit))
hl.bind(mainMod.."+ space", hl.dsp.exec_cmd(menu))
hl.bind(mainMod.."+ B", hl.dsp.exec_cmd(browser))
hl.bind(mainMod.."+ M", hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod.."+ S", hl.dsp.exec_cmd("steam"))
hl.bind(mainMod.."+ A", hl.dsp.exec_cmd("bash "..scripts.."/rofi-menu/open-custom-rofi.sh"))

-- Bind basic functions
hl.bind(mainMod.."+ SHIFT + Q", hl.dsp.window.close(activewindow))
hl.bind(mainMod.."+ F", hl.dsp.window.fullscreen(toggle, activewindow))
hl.bind(mainMod.."+ V", hl.dsp.window.float(toggle, activewindow))
hl.bind(mainMod.."+ P", hl.dsp.window.pseudo(toggle, activewindow))

-- Bind screenshot functions
hl.bind(mainMod.."+ PRINT", hl.dsp.exec_cmd("hyprshot -m output"))
hl.bind(mainMod.."+ SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m window"))
hl.bind("SHIFT + PRINT", hl.dsp.exec_cmd("hyprshot -m region"))

-- Bind windows focus 
hl.bind(mainMod.."+ H", hl.dsp.focus({direction = "left"}))
hl.bind(mainMod.."+ J", hl.dsp.focus({direction = "down"}))
hl.bind(mainMod.."+ K", hl.dsp.focus({direction = "up"}))
hl.bind(mainMod.."+ L", hl.dsp.focus({direction = "right"}))

-- Bind windows move 
hl.bind(mainMod.."+ SHIFT + H", hl.dsp.window.move({direction = "left"}))
hl.bind(mainMod.."+ SHIFT + J", hl.dsp.window.move({direction = "up"}))
hl.bind(mainMod.."+ SHIFT + K", hl.dsp.window.move({direction = "down"}))
hl.bind(mainMod.."+ SHIFT + L",hl.dsp.window.move({direction = "right"}))

-- Bind workspace switching 
hl.bind(mainMod.."+ ampersand", hl.dsp.focus({workspace = 1}))
hl.bind(mainMod.."+ eacute", hl.dsp.focus({workspace = 2}))
hl.bind(mainMod.."+ quotedbl", hl.dsp.focus({workspace = 3}))
hl.bind(mainMod.."+ apostrophe", hl.dsp.focus({workspace = 4}))
hl.bind(mainMod.."+ parenleft", hl.dsp.focus({workspace = 5}))
hl.bind(mainMod.."+ minus", hl.dsp.focus({workspace = 6}))
hl.bind(mainMod.."+ egrave", hl.dsp.focus({workspace = 7}))
hl.bind(mainMod.."+ underscore", hl.dsp.focus({workspace = 8}))
hl.bind(mainMod.."+ ccedilla", hl.dsp.focus({workspace = 9}))
hl.bind(mainMod.."+ agrave", hl.dsp.focus({workspace = 10}))

-- Bind windows workspace's moving 
hl.bind(mainMod.."+ SHIFT + ampersand", hl.dsp.window.move({workspace = 1}))
hl.bind(mainMod.."+ SHIFT + eacute", hl.dsp.window.move({workspace = 2}))
hl.bind(mainMod.."+ SHIFT + quotedbl", hl.dsp.window.move({workspace = 3}))
hl.bind(mainMod.."+ SHIFT + apostrophe", hl.dsp.window.move({workspace = 4}))
hl.bind(mainMod.."+ SHIFT + parenleft", hl.dsp.window.move({workspace = 5}))
hl.bind(mainMod.."+ SHIFT + minus", hl.dsp.window.move({workspace = 6}))
hl.bind(mainMod.."+ SHIFT + egrave", hl.dsp.window.move({workspace = 7}))
hl.bind(mainMod.."+ SHIFT + underscore", hl.dsp.window.move({workspace = 8}))
hl.bind(mainMod.."+ SHIFT + ccedilla", hl.dsp.window.move({workspace = 9}))
hl.bind(mainMod.."+ SHIFT + agrave", hl.dsp.window.move({workspace = 10}))

-- Bind move and resize for floating window
hl.bind(mainMod.."+ mouse:272", hl.dsp.window.drag())
hl.bind(mainMod.."+ mouse:273", hl.dsp.window.resize())

-- Bind sound
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { locked = true })
