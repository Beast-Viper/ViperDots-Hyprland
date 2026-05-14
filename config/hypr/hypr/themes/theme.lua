hl.config({
    exec = {
        "gsettings set org.gnome.desktop.interface icon-theme 'WhiteSur'",
        "gsettings set org.gnome.desktop.interface gtk-theme 'WhiteSur-Dark'",
        "gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'"
    },

    general = {
        gaps_in = 3,
        gaps_out = 4,
        border_size = 2,
        ["col.active_border"] = "rgba(B4BEFEFF)",
          ["col.inactive_border"] = "rgba(798AFFFF)",
          layout = "dwindle",
          resize_on_border = true,
          extend_border_grab_area = 10,
          hover_icon_on_border = true,
    },

    group = {
        ["col.border_active"] = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)" }, angle = 45 },
          ["col.border_inactive"] = { colors = { "rgba(b4befecc)", "rgba(6c7086cc)" }, angle = 45 },
          ["col.border_locked_active"] = { colors = { "rgba(ca9ee6ff)", "rgba(f2d5cfff)" }, angle = 45 },
          ["col.border_locked_inactive"] = { colors = { "rgba(b4befecc)", "rgba(6c7086cc)" }, angle = 45 },
    },

    decoration = {
        rounding = 10,

        blur = {
            enabled = true,
            size = 5,
            passes = 3,
            new_optimizations = true,
            ignore_opacity = true,
            xray = true,
        },

        shadow = {
            enabled = false,
        }
    },

    layerrule = {
        "unset, waybar"
    }
})
