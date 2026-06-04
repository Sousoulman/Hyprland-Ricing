-- set default workspace for some apps
hl.window_rule({
    match = {
        class = "osu!"
    },
    workspace = 4
})

hl.window_rule({
    match = {
        class = "steam"
    },
    workspace = "6 silent"
})

hl.window_rule({
    match = {
        class = "Spotify"
    },
    workspace = "5 silent"
})

hl.window_rule({
    match = {
        class = "(steam_app)"
    },
    workspace = "5 silent"
})

hl.window_rule({
    match = {
        class = "vesktop"
    },
    workspace = "1 silent"
})
