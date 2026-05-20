-- █▀▄▀█ █▀█ █▄░█ █ ▀█▀ █▀█ █▀█ █▀
-- █░▀░█ █▄█ █░▀█ █ ░█░ █▄█ █▀▄ ▄█

-- Set your monitor configuration here
-- See https://wiki.hypr.land/Configuring/Monitors/

hl.monitor({ output = "eDP-1", mode = "1920x1080@144", position = "0x0", scale = "1" })
hl.monitor({ output = "eDP-2", mode = "1920x1080@144", position = "0x0", scale = "1" })
hl.monitor({
    output = "HDMI-A-1",
    mode = "preferred",
    position = "auto-up", -- Places the TV directly above the existing monitors
    scale = 1,
    bitdepth = 10,
    cm = "hdr",
    supports_wide_color = 0,
    supports_hdr = 1,
    sdrbrightness = 1.2,
    sdrsaturation = 1.0
})
