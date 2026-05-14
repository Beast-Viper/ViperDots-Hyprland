-- █▄▀ █▀▀ █▄█ █▄▄ █ █▄░█ █▀▄ █ █▄░█ █▀▀ █▀
-- █░█ ██▄ ░█░ █▄█ █ █░▀█ █▄▀ █ █░▀█ █▄█ ▄█

-- Paths and Variables
local scrPath = os.getenv("HOME") .. "/.local/share/bin"
local mainMod = "SUPER"
local reverse = "grave"
local key     = "Tab"

local term    = "kitty"
local editor  = "xed"
local file    = "nautilus"
local browser = "zen-browser"

-------------------------------
---- WINDOW/SESSION ACTIONS ---
-------------------------------
hl.bind("CTRL + 0",                 hl.dsp.exec_cmd("hyprpicker -a"))
hl.bind("SUPER + Q",                hl.dsp.window.close())
hl.bind("ALT + F4",                 hl.dsp.window.close())
hl.bind(mainMod .. " + Delete",     hl.dsp.exit())
hl.bind(mainMod .. " + W",          hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + G",          hl.dsp.group.toggle())
hl.bind("F11",                      hl.dsp.window.fullscreen())
hl.bind(mainMod .. " + L",          hl.dsp.exec_cmd("hyprlock"))
hl.bind(mainMod .. " + SHIFT + F",  hl.dsp.exec_cmd(scrPath .. "/windowpin.sh"))
hl.bind(mainMod .. " + Backspace",  hl.dsp.exec_cmd(scrPath .. "/logoutlaunch.sh"))
hl.bind("CTRL + ALT + W",           hl.dsp.exec_cmd("hyprpanel -q; hyprpanel"))
hl.bind(mainMod .. " + I",          hl.dsp.exec_cmd("hyprpanel toggleWindow settings-dialog"))
hl.bind("CTRL + SHIFT + B",         hl.dsp.exec_cmd("killall hyprsunset || hyprsunset -t 4000"))
hl.bind(mainMod .. " + TAB",        hl.dsp.exec_cmd("qs ipc -c overview call overview toggle"))

-------------------------------
---- APPLICATION SHORTCUTS ----
-------------------------------
hl.bind("XF86MenuKB",               hl.dsp.exec_cmd(term))
hl.bind(mainMod .. " + E",          hl.dsp.exec_cmd(file))
hl.bind(mainMod .. " + C",          hl.dsp.exec_cmd(editor))
hl.bind(mainMod .. " + F",          hl.dsp.exec_cmd("prime-run " .. browser))
hl.bind("CTRL + SHIFT + Escape",    hl.dsp.exec_cmd(scrPath .. "/sysmonlaunch.sh"))

-- Rofi Menus
hl.bind(mainMod .. " + SHIFT + E",  hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/rofilaunch.sh f"))

-------------------------------
---- AUDIO & MEDIA CONTROLS ---
-------------------------------
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("volumectl toggle-mute"), { locked = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("volumectl -m mute"),     { locked = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("volumectl -u down"),     { repeating = true })
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("volumectl -u up"),       { repeating = true })

hl.bind("XF86AudioPlay",        hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("code:127",             hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("XF86AudioPause",       hl.dsp.exec_cmd("playerctl play-pause"),  { locked = true })
hl.bind("XF86AudioNext",        hl.dsp.exec_cmd("playerctl next"),        { locked = true })
hl.bind("XF86AudioPrev",        hl.dsp.exec_cmd("playerctl previous"),    { locked = true })

-------------------------------
---- BRIGHTNESS CONTROL -------
-------------------------------
hl.bind("XF86MonBrightnessUp",   hl.dsp.exec_cmd("lightctl up"),   { repeating = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("lightctl down"), { repeating = true })

-------------------------------
---- FOCUS & GROUP MOVEMENT ---
-------------------------------
hl.bind(mainMod .. " + CTRL + H", hl.dsp.exec_cmd("hyprctl dispatch changegroupactive b"))
hl.bind(mainMod .. " + CTRL + L", hl.dsp.exec_cmd("hyprctl dispatch changegroupactive f"))

hl.bind(mainMod .. " + Left",  hl.dsp.focus({ direction = "l" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ direction = "r" }))
hl.bind(mainMod .. " + Up",    hl.dsp.focus({ direction = "u" }))
hl.bind(mainMod .. " + Down",  hl.dsp.focus({ direction = "d" }))
hl.bind("ALT + Tab",           hl.dsp.focus({ direction = "d" }))

-------------------------------
---- SCREENSHOT & CUSTOM ------
-------------------------------
hl.bind(mainMod .. " + P",        hl.dsp.exec_cmd(scrPath .. "/screenshot.sh s"))
hl.bind(mainMod .. " + CTRL + P", hl.dsp.exec_cmd(scrPath .. "/screenshot.sh sf"))
hl.bind(mainMod .. " + ALT + P",  hl.dsp.exec_cmd(scrPath .. "/screenshot.sh m"))
hl.bind("Print",                  hl.dsp.exec_cmd(scrPath .. "/screenshot.sh p"))

hl.bind(mainMod .. " + ALT + G",    hl.dsp.exec_cmd(scrPath .. "/gamemode.sh"))
hl.bind(mainMod .. " + V",          hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/cliphist.sh c"))
hl.bind(mainMod .. " + SHIFT + V",  hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/cliphist.sh"))
hl.bind(mainMod .. " + K",          hl.dsp.exec_cmd(scrPath .. "/keyboardswitch.sh"))
hl.bind(mainMod .. " + slash",      hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/keybinds_hint.sh c"))
hl.bind(mainMod .. " + ALT + A",    hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/animations.sh"))

-------------------------------
---- WORKSPACES ---------------
-------------------------------
-- Dynamically generate bindings for workspaces 1-10 to save lines
for i = 1, 10 do
    local key = i % 10 -- Maps 10 to key 0

    -- Switch to workspace
    hl.bind(mainMod .. " + " .. key, hl.dsp.focus({ workspace = i }))
    -- Move focused window to workspace
    hl.bind(mainMod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
    -- Move focused window silently to workspace
    hl.bind(mainMod .. " + ALT + " .. key, hl.dsp.exec_cmd("hyprctl dispatch movetoworkspacesilent " .. i))
end

-- Relative & Empty Workspaces
hl.bind(mainMod .. " + CTRL + Right", hl.dsp.focus({ workspace = "r+1" }))
hl.bind(mainMod .. " + CTRL + Left",  hl.dsp.focus({ workspace = "r-1" }))
hl.bind(mainMod .. " + CTRL + Down",  hl.dsp.focus({ workspace = "empty" }))

hl.bind(mainMod .. " + CTRL + ALT + Right", hl.dsp.window.move({ workspace = "r+1" }))
hl.bind(mainMod .. " + CTRL + ALT + Left",  hl.dsp.window.move({ workspace = "r-1" }))

-- Scroll Workspaces
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Special Workspace
hl.bind(mainMod .. " + ALT + S", hl.dsp.window.move({ workspace = "special", follow = false }))
hl.bind(mainMod .. " + S",       hl.dsp.workspace.toggle_special(""))

-- Toggle Split
hl.bind(mainMod .. " + J", hl.dsp.layout("togglesplit"))

-------------------------------
---- RESIZE & MOVE ------------
-------------------------------
-- Mouse Binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind(mainMod .. " + Z",         hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + X",         hl.dsp.window.resize(), { mouse = true })

-- Keyboard Resizing
hl.bind(mainMod .. " + SHIFT + Right", hl.dsp.exec_cmd("hyprctl dispatch resizeactive 30 0"),  { repeating = true })
hl.bind(mainMod .. " + SHIFT + Left",  hl.dsp.exec_cmd("hyprctl dispatch resizeactive -30 0"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Up",    hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 -30"), { repeating = true })
hl.bind(mainMod .. " + SHIFT + Down",  hl.dsp.exec_cmd("hyprctl dispatch resizeactive 0 30"),  { repeating = true })

-- Complex Active Window Movement
local moveActiveCmd = 'grep -q "true" <<< $(hyprctl activewindow -j | jq -r .floating) && hyprctl dispatch moveactive'
hl.bind(mainMod .. " + SHIFT + CTRL + Left",  hl.dsp.exec_cmd(moveActiveCmd .. " -30 0 || hyprctl dispatch movewindow l"), { description = "Move activewindow left" })
hl.bind(mainMod .. " + SHIFT + CTRL + Right", hl.dsp.exec_cmd(moveActiveCmd .. " 30 0 || hyprctl dispatch movewindow r"),  { description = "Move activewindow right" })
hl.bind(mainMod .. " + SHIFT + CTRL + Up",    hl.dsp.exec_cmd(moveActiveCmd .. " 0 -30 || hyprctl dispatch movewindow u"),   { description = "Move activewindow up" })
hl.bind(mainMod .. " + SHIFT + CTRL + Down",  hl.dsp.exec_cmd(moveActiveCmd .. " 0 30 || hyprctl dispatch movewindow d"),    { description = "Move activewindow down" })

-------------------------------
---- ROFI & RICE MENUS --------
-------------------------------
local rofi_d = "[Rofi menus]"
local rice_d = "[Theming and Wallpaper]"
local rofi_launch = scrPath .. "/rofilaunch.sh"

hl.bind(mainMod .. " + space",       hl.dsp.exec_cmd("pkill -x rofi || " .. rofi_launch .. " d"),      { description = rofi_d .. " application finder" })
hl.bind(mainMod .. " + SHIFT + E",   hl.dsp.exec_cmd("pkill -x rofi || " .. rofi_launch .. " f"),      { description = rofi_d .. " file finder" })
hl.bind(mainMod .. " + slash",       hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/keybinds_hint.sh c"), { description = rofi_d .. " keybindings hint" })
hl.bind(mainMod .. " + comma",       hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/emoji-picker.sh"),    { description = rofi_d .. " emoji picker" })
hl.bind(mainMod .. " + period",      hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/glyph-picker.sh"),    { description = rofi_d .. " glyph picker" })
hl.bind(mainMod .. " + V",           hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/cliphist.sh -c"),     { description = rofi_d .. " clipboard" })
hl.bind(mainMod .. " + SHIFT + V",   hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/cliphist.sh"),        { description = rofi_d .. " clipboard manager" })
hl.bind(mainMod .. " + SHIFT + A",   hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/rofiselect.sh"),      { description = rofi_d .. " select rofi launcher" })

hl.bind(mainMod .. " + ALT + Right", hl.dsp.exec_cmd(scrPath .. "/swwwallpaper.sh -n"),                        { description = rice_d .. " next wallpaper" })
hl.bind(mainMod .. " + ALT + Left",  hl.dsp.exec_cmd(scrPath .. "/swwwallpaper.sh -p"),                        { description = rice_d .. " previous wallpaper" })
hl.bind(mainMod .. " + SHIFT + W",   hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/swwwallselect.sh"),   { description = rice_d .. " select a wallpaper" })
hl.bind(mainMod .. " + SHIFT + R",   hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/wallbashtoggle.sh -m"), { description = rice_d .. " wallbash mode selector" })
hl.bind(mainMod .. " + SHIFT + T",   hl.dsp.exec_cmd("pkill -x rofi || " .. scrPath .. "/themeselect.sh"),     { description = rice_d .. " select a theme" })
