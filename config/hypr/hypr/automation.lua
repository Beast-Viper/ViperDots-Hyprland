#!/usr/bin/env lua

local START_HOUR = 18
local END_HOUR = 5
local TEMPERATURE = 5500

local function is_active_hours(hour)
    if START_HOUR > END_HOUR then
        return hour >= START_HOUR or hour < END_HOUR
    else
        return hour >= START_HOUR and hour < END_HOUR
    end
end

while true do
    local current_hour = tonumber(os.date("%H"))
    local should_be_on = is_active_hours(current_hour)

    local check_cmd = io.popen("pgrep -x hyprsunset")
    local is_running = check_cmd:read("*a") ~= ""
    check_cmd:close()

    if should_be_on and not is_running then
        os.execute("hyprsunset -t " .. TEMPERATURE .. " > /dev/null 2>&1 &")

    elseif not should_be_on and is_running then
        os.execute("killall hyprsunset")
    end

    os.execute("sleep 5")
end
