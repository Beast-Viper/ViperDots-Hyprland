----------------
---- CURSOR ----
----------------

-- Apply the hardware cursor setting
hl.config({
    cursor = {
        no_hardware_cursors = true,
    }
})

-- Set the cursor theme on startup
hl.on("hyprland.start", function()
    hl.exec_cmd("hyprctl setcursor Catppuccin Mocha Lavender 24")
end)
