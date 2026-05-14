--      ░▒▒▒░░░░░▓▓          ___________
--    ░░▒▒▒░░░░░▓▓        //___________/
--   ░░▒▒▒░░░░░▓▓     _   _ _    _ _____
--   ░░▒▒░░░░░▓▓▓▓▓▓ | | | | |  | |  __/
--    ░▒▒░░░░▓▓   ▓▓ | |_| | |_/ /| |___
--     ░▒▒░░▓▓   ▓▓   \__  |____/ |____/
--       ░▒▓▓   ▓▓  //____/

-- Set scripts path
local scrPath = os.getenv("HOME") .. "/.local/share/bin"

------------------
---- MONITORS ----
------------------
-- See https://wiki.hyprland.org/Configuring/Monitors/
hl.monitor({
    output   = "",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

-------------------
---- AUTOSTART ----
-------------------
hl.on("hyprland.start", function () 
    hl.exec_cmd(scrPath .. "/resetxdgportal.sh")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd --all")
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd(scrPath .. "/polkitkdeauth.sh")
    hl.exec_cmd("hyprpanel")
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd(scrPath .. "/batterynotify.sh")
    hl.exec_cmd("easyeffects --gapplication-service")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("avizo-service")
    hl.exec_cmd("hyprpm reload -n")
    hl.exec_cmd("libinput-gestures")
    hl.exec_cmd("hyprswitch init --show-title --size-factor 4.5 --workspaces-per-row 6 &")
    hl.exec_cmd("conky -c ~/.config/conky/Sargas/Sargas.conf")
    hl.exec_cmd("conky -c ~/.config/conky/Auva/Auva2.conf")
    hl.exec_cmd("power-daemon-mgr daemon")
    hl.exec_cmd("qs -c overview")
end)

-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------
hl.env("PATH", os.getenv("PATH") .. ":" .. scrPath)
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_QPA_PLATFORMTHEME", "qt6ct")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("MOZ_ENABLE_WAYLAND", "1")
hl.env("GDK_SCALE", "1")

-----------------------
---- CONFIGURATION ----
-----------------------
hl.config({
    general = {
        allow_tearing = true,
    },

    input = {
        kb_layout = "us",
        follow_mouse = 1,
        sensitivity = 0,
        force_no_accel = 0,
        numlock_by_default = true,

        touchpad = {
            natural_scroll = true,
            tap_and_drag = true,
            middle_button_emulation = true,
            tap_to_click = true,
            drag_3fg = 0,
        },
    },

    gestures = {
        workspace_swipe_invert = true,
        workspace_swipe_distance = 700,
        workspace_swipe_min_speed_to_force = 6,
        workspace_swipe_forever = true,
    },

    dwindle = {
        preserve_split = true,
        smart_split = true,
        smart_resizing = true,
    },

    master = {
        new_status = "master",
        orientation = "center",
        new_on_top = true,
    },

    misc = {
        vrr = 3,
        disable_hyprland_logo = true,
        disable_splash_rendering = true,
        force_default_wallpaper = 0,
        enable_swallow = true,
        middle_click_paste = true,
        disable_hyprland_guiutils_check = false,
    },

    xwayland = {
        force_zero_scaling = true,
        enabled = true,
    },

    render = {
        direct_scanout = 2,
        new_render_scheduling = true,
    },

    cursor = {
        sync_gsettings_theme = false,
        enable_hyprcursor = true,
        min_refresh_rate = 60,
        default_monitor = "eDP-1",
        no_hardware_cursors = true,
    },

        ecosystem = {
        no_update_news = true,
        no_donation_nag = true,
    },

    opengl = {
        nvidia_anti_flicker = false,
    }
})

-------------------------
---- DEVICES & INPUT ----
-------------------------
hl.device({
    name = "epic-mouse-v1",
    sensitivity = -0.5,
})

hl.gesture({
    fingers = 4,
    direction = "horizontal",
    action = "workspace"
})

-----------------
---- MODULES ----
-----------------
require("animations")
require("keybindings")
require("windowrules")
require("themes.common")
require("themes.theme")
require("themes.colors")
require("monitors")
require("cursor")
require("plugins")
