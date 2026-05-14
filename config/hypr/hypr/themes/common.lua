-- █▀▀ █▀█ █▄░█ ▀█▀
-- █▀░ █▄█ █░▀█ ░█░
-- Fonts
os.execute("gsettings set org.gnome.desktop.interface font-name 'SF Pro Rounded Medium 12'")
os.execute("gsettings set org.gnome.desktop.interface document-font-name 'SF Pro Rounded Medium 12'")
os.execute("gsettings set org.gnome.desktop.interface monospace-font-name 'MesloLGS NF Bold 13'")
os.execute("gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'")
os.execute("gsettings set org.gnome.desktop.interface font-hinting 'full'")

-- █▀ █▀█ █▀▀ █▀▀ █ ▄▀█ █░░
-- ▄█ █▀▀ ██▄ █▄▄ █ █▀█ █▄▄
-- Decoration
hl.config({
    decoration = {
        dim_special = 0.3,

        blur = {
            special = false,
            enabled = true,
            ignore_opacity = true,
            contrast = 1.8,
            brightness = 2.0,
            popups = true,
            new_optimizations = true,
            noise = 0,
            vibrancy = 0.0,
            vibrancy_darkness = 0,
            passes = 3,
            popups_ignorealpha = 0.5,
            size = 10,
        },

        shadow = {
            enabled = false,
            render_power = 1,
            range = 2,
        },

        inactive_opacity = 0.8,
        active_opacity = 1.0,
        fullscreen_opacity = 1.0,
    }
})
