-- █░█░█ █ █▄░█ █▀▄ █▀█ █░█░█   █▀█ █░█ █░░ █▀▀ █▀
-- ▀▄▀▄▀ █ █░▀█ █▄▀ █▄█ ▀▄▀▄▀   █▀▄ █▄█ █▄▄ ██▄ ▄█

-- See https://wiki.hypr.land/Configuring/Basics/Window-Rules/

hl.window_rule({ match = { class = "^(com.github.neithern.g4music)$" }, opacity = "1.00 1.00" })
hl.window_rule({ match = { class = "^(Google-chrome)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { class = "^(spotube)$" }, opacity = "0.90 1.00" })
hl.window_rule({ match = { class = "^(Brave-browser)$" }, opacity = "0.90 0.90" })
hl.window_rule({ match = { class = "^(code-oss)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^([Cc]ode)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(code-url-handler)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(code-insiders-url-handler)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(kitty)$" }, opacity = "1.00 1.00" })
hl.window_rule({ match = { class = "^(org.kde.dolphin)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(org.kde.ark)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(kvantummanager)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(org.pulseaudio.pavucontrol)$" }, opacity = "0.80 0.70", float = true })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, opacity = "0.80 0.70", float = true })
hl.window_rule({ match = { class = "^(nm-applet)$" }, opacity = "0.80 0.70", float = true })
hl.window_rule({ match = { class = "^(nm-connection-editor)$" }, opacity = "0.80 0.70", float = true })
hl.window_rule({ match = { class = "^(org.kde.polkit-kde-authentication-agent-1)$" }, opacity = "0.80 0.70", float = true })
hl.window_rule({ match = { class = "^(polkit-gnome-authentication-agent-1)$" }, opacity = "0.80 0.70" })
hl.window_rule({ match = { class = "^(org.freedesktop.impl.portal.desktop.gtk)$" }, opacity = "0.80 0.70" })
hl.window_rule({ match = { class = "^(org.freedesktop.impl.portal.desktop.hyprland)$" }, opacity = "0.80 0.70" })
hl.window_rule({ match = { class = "^([Ss]potify)$" }, opacity = "0.70 0.70" })
hl.window_rule({ match = { initial_title = "^(Spotify Free)$" }, opacity = "0.70 0.70" })
hl.window_rule({ match = { initial_title = "^(Spotify Premium)$" }, opacity = "0.70 0.70" })
hl.window_rule({ match = { class = "^(swaync-notification-window)$" }, opacity = "0.50 0.50" })

hl.window_rule({ match = { class = "^(org.gnome.Nautilus)$" }, opacity = "0.90 1.00", float = true })
hl.window_rule({ match = { class = "^(com.github.rafostar.Clapper)$" }, opacity = "0.90 0.90", float = true })
-- hl.window_rule({ match = { class = "^(com.github.tchx84.Flatseal)$" }, opacity = "0.80 0.80" }) -- Flatseal-Gtk
hl.window_rule({ match = { class = "^(hu.kramo.Cartridges)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(com.obsproject.Studio)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(gnome-boxes)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(discord)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(WebCord)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(ArmCord)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(app.drey.Warp)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(net.davidotek.pupgui2)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(yad)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(Signal)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(io.github.alainm23.planify)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(io.gitlab.theevilskeleton.Upscaler)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(com.github.unrud.VideoDownloader)$" }, opacity = "0.80 0.80" })
hl.window_rule({ match = { class = "^(io.gitlab.adhami3310.Impression)$" }, opacity = "0.80 0.80", float = true })
hl.window_rule({ match = { class = "^(io.github.flattool.Warehouse)$" }, opacity = "0.80 0.80" })

-- Suppress events
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" }) 
hl.window_rule({ match = { class = ".*" }, suppress_event = "minimize" }) 

hl.window_rule({ match = { class = "^(org.kde.dolphin)$", title = "^(Progress Dialog — Dolphin)$" }, float = true })
hl.window_rule({ match = { class = "^(org.kde.dolphin)$", title = "^(Copying — Dolphin)$" }, float = true })
hl.window_rule({ match = { title = "^(About Mozilla Firefox)$" }, float = true })
hl.window_rule({ match = { title = "^(About Zen Browser)$" }, float = true })
hl.window_rule({ match = { class = "^(firefox)$", title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ match = { class = "^(firefox)$", title = "^(Library)$" }, float = true })
hl.window_rule({ match = { class = "^(zen)$", title = "^(Picture-in-Picture)$" }, float = true })
hl.window_rule({ match = { class = "^(zen)$", title = "^(Library)$" }, float = true })
hl.window_rule({ match = { class = "^(kitty)$", title = "^(top)$" }, float = true })
hl.window_rule({ match = { class = "^(kitty)$", title = "^(btop)$" }, float = true })
hl.window_rule({ match = { class = "^(kitty)$", title = "^(htop)$" }, float = true })
hl.window_rule({ match = { class = "^(vlc)$" }, float = true })
hl.window_rule({ match = { class = "^(qt5ct)$" }, float = true })
hl.window_rule({ match = { class = "^(qt6ct)$" }, float = true })
hl.window_rule({ match = { class = "^(nwg-look)$" }, float = true })

hl.window_rule({ match = { class = "^(eog)$" }, float = true }) -- Imageviewer-Gtk
hl.window_rule({ match = { class = "^(com.github.unrud.VideoDownloader)$" }, float = true }) -- VideoDownloader-Gkk
hl.window_rule({ match = { class = "^(io.missioncenter.MissionCenter)$" }, float = true }) -- MissionCenter-Gtk

-- Make Nautilus always float and set an initial size, while allowing resizing
hl.window_rule({ match = { class = "^(xdg-desktop-portal-gtk)$" }, border_size = 0, no_blur = true, float = true })
hl.window_rule({ match = { title = "^(File Upload)$" }, border_size = 0, no_blur = true })

-- common modals
hl.window_rule({ match = { title = "^(Open)$" }, float = true })
hl.window_rule({ match = { title = "^(Choose Files)$" }, float = true })
hl.window_rule({ match = { title = "^(Save As)$" }, float = true })
hl.window_rule({ match = { title = "^(Confirm to replace files)$" }, float = true })
hl.window_rule({ match = { title = "^(File Operation Progress)$" }, float = true })
hl.window_rule({ match = { class = "^(org.gnome.NautilusPreviewer)$" }, float = true })
hl.window_rule({ match = { class = "^(gcolor3)$" }, float = true })

-- ags
hl.layer_rule({ match = { namespace = "sideleft.*" }, animation = "slide left" })
hl.layer_rule({ match = { namespace = "sideright.*" }, animation = "slide right" })
hl.layer_rule({ match = { namespace = "session[0-9]*" }, blur = true })

hl.layer_rule({ match = { namespace = "bar[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "barcorner.*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "dock[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "indicator.*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "overview[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "cheatsheet[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "sideright[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "sideleft[0-9]*" }, blur = true, ignore_alpha = 0.6 })
hl.layer_rule({ match = { namespace = "osk[0-9]*" }, blur = true, ignore_alpha = 0.6 })

-- █░░ ▄▀█ █▄█ █▀▀ █▀█   █▀█ █░█ █░░ █▀▀ █▀
-- █▄▄ █▀█ ░█░ ██▄ █▀▄   █▀▄ █▄█ █▄▄ ██▄ ▄█

hl.layer_rule({ match = { namespace = "rofi" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "nwg-drawer" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "notifications" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "logout_dialog" }, blur = true })
hl.layer_rule({ match = { namespace = "waybar" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "swaync-control-center" }, blur = true, ignore_alpha = 0 })
hl.layer_rule({ match = { namespace = "swaync-notification-window" }, blur = true, ignore_alpha = 0 })

hl.window_rule({ match = { xwayland = true }, no_blur = true })
