-- ▄▀█ █▄░█ █ █▀▄▀█ ▄▀█ ▀█▀ █ █▀█ █▄░█
-- █▀█ █░▀█ █ █░▀░█ █▀█ ░█░ █ █▄█ █░▀█

---------------------
---- LAYER RULES ----
---------------------

-- Disable animations while in hyprpicker
hl.layer_rule({
    name    = "no-anim-hyprpicker",
    match   = { namespace = "hyprpicker" },
    no_anim = true,
})

-- Disable animations for selection screenshot
hl.layer_rule({
    name    = "no-anim-selection",
    match   = { namespace = "selection" },
    no_anim = true,
})

--------------------
---- ANIMATIONS ----
--------------------

hl.config({ animations = { enabled = true } })

-- Bezier curves
hl.curve("md3_decel", { type = "bezier", points = { { 0.05, 0.7 }, { 0.1, 1 } } })
hl.curve("md3_accel", { type = "bezier", points = { { 0.3, 0 }, { 0.8, 0.15 } } })
hl.curve("menu_decel", { type = "bezier", points = { { 0.1, 1 }, { 0, 1 } } })
hl.curve("menu_accel", { type = "bezier", points = { { 0.38, 0.04 }, { 1, 0.07 } } })


-- Spring Curves
-- Reduced stiffness for a slightly longer duration.
-- Tuned dampening close to critical damping ($c = 2\sqrt{mk}$) for a smoother, elegant settle.
hl.curve("spring_menu", { type = "spring", mass = 1, stiffness = 350, dampening = 35 })
hl.curve("spring_window", { type = "spring", mass = 1, stiffness = 300, dampening = 30 })
hl.curve("spring_open", { type = "spring", mass = 1, stiffness = 300, dampening = 30 })
hl.curve("spring_workspace", { type = "spring", mass = 0.6, stiffness = 300, dampening = 25 })
hl.curve("spring_special", { type = "spring", mass = 1, stiffness = 300, dampening = 30 })


-- Window animations
hl.animation({ leaf = "windows", enabled = true, speed = 3, spring = "spring_window" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 3, spring = "spring_open", style = "popin 40%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 4, bezier = "md3_accel", style = "popin 60%" }) -- Increased speed (duration) to match springs

-- Border animations (disabled)
hl.animation({ leaf = "border", enabled = false })
hl.animation({ leaf = "borderangle", enabled = false })

-- Fade
hl.animation({ leaf = "fade", enabled = true, speed = 1.5, bezier = "md3_decel" }) -- Slightly longer fade

-- Zoom cursor
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 6, bezier = "md3_decel" })

-- Layer animations
hl.animation({ leaf = "layersIn", enabled = true, speed = 3, spring = "spring_menu", style = "slide" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 2.5, bezier = "menu_accel", style = "slide" }) -- Increased speed (duration)
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 2.5, bezier = "menu_decel" }) -- Increased speed (duration)
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 2, bezier = "menu_accel" }) -- Increased speed (duration)

-- Workspace animations
hl.animation({ leaf = "workspaces", enabled = true, speed = 0.6, spring = "spring_workspace", style = "slide" })
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 1, spring = "spring_special", style = "slidefadevert 40%" })
