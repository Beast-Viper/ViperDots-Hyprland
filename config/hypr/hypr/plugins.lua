-----------------
---- PLUGINS ----
-----------------

hl.config({
    plugin = {
        hymission = {
            -- Pass duplicate keys as an array of strings in Lua
            gesture = {
                "3, vertical, dispatcher, hymission:toggle,forceall",
                "3, vertical, dispatcher, hymission:toggle,recommand",
                "3, vertical, dispatcher, hymission:open,onlycurrentworkspace"
            }
        }
    }
})
