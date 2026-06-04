hl.config({
    general = {
        gaps_in = 10, 
        gaps_out = 20,

        border_size = 5,

        col = {
            active_border = { colors = {"rgba(256FD8E6)", "rgba(8947d5e6)"}, angle = 45},
            inactive_border = "rgba(4b6e97cc)"
        }
    },

    decoration = {
        rounding = 10,
        inactive_opacity = .95,

        shadow = {
            enabled = true,
            range = 2,
            render_power = 1,
            color = "rgba(1a1a1aee)",
    },

        blur = {
            enabled = true,
            size = 2,
            passes = 2,
            vibrancy = 0.16
        }
    },

    animations = {
        enabled = true,
    },

    dwindle = {
      force_split                  = 2,
      preserve_split               = false,
      smart_split                  = false,
      smart_resizing               = true,
      permanent_direction_override = false,
      special_scale_factor         = 1,
      split_width_multiplier       = 1.0,
      use_active_for_splits        = true,
      default_split_ratio          = 1.0,
      split_bias                   = 0,
      precise_mouse_move           = false,
  },
})

hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} }})
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} }})
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} }})
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1} }})
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1} }})

hl.curve("easy", { type = "spring", mass = 1, stiffness =71.2633, dampening = 15.8273644})

hl.animation({ leaf = "global", enabled = true,  speed = 10,   bezier = "default" })
hl.animation({ leaf = "border", enabled = true,  speed = 5.39, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true,  speed = 4.79, spring = "easy" })
hl.animation({ leaf = "windowsIn", enabled = true,  speed = 4.1,  spring = "easy",         style = "popin 87%" })
hl.animation({ leaf = "windowsOut", enabled = true,  speed = 1.49, bezier = "linear",       style = "popin 87%" })
hl.animation({ leaf = "fadeIn", enabled = true,  speed = 1.73, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true,  speed = 1.46, bezier = "almostLinear" })
hl.animation({ leaf = "fade", enabled = true,  speed = 3.03, bezier = "quick" })
hl.animation({ leaf = "layers", enabled = true,  speed = 3.81, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true,  speed = 4,    bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true,  speed = 1.5,  bezier = "linear",       style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true,  speed = 1.79, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true,  speed = 1.39, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesIn", enabled = true,  speed = 1.21, bezier = "almostLinear", style = "fade" })
hl.animation({ leaf = "workspacesOut", enabled = true,  speed = 1.94, bezier = "almostLinear", style = "fade" })
