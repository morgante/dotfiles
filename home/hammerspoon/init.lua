local utils = require("utils")

require('spaces')

-----------------------------------------------
-- rearrange windows
-----------------------------------------------

local mappings = {{mod={"shift", "cmd", "ctrl"}, key="z", c={0, 0, 1, 1}},
{mod={"alt", "cmd", "ctrl"}, key="left", c={0, 0, 0.5, 1}},
{mod={"alt", "cmd", "ctrl"}, key="right", c={0.5, 0, 0.5, 1}},
{mod={"alt", "cmd", "ctrl"}, key="up", c={0, 0, 1, 0.5}},
{mod={"alt", "cmd", "ctrl"}, key="down", c={0, 0.5, 1, 0.5}},
{mod={"shift", "cmd", "ctrl"}, key="left", c={0, 0, 0.5, 0.5}},
{mod={"shift", "cmd", "ctrl"}, key="up", c={0.5, 0, 0.5, 0.5}},
{mod={"shift", "cmd", "ctrl"}, key="right", c={0.5, 0.5, 0.5, 0.5}},
{mod={"shift", "cmd", "ctrl"}, key="down", c={0, 0.5, 0.5, 0.5}}}

for i, m in pairs(mappings) do
    hs.hotkey.bind(m.mod, m.key, function()
        local win = hs.window.focusedWindow()
        local f = win:frame()
        local screen = win:screen()
        local max = screen:frame()

        f.x = max.x + (max.w * m.c[1])
        f.y = max.y + (max.h * m.c[2])
        f.w = max.w * m.c[3]
        f.h = max.h * m.c[4]
        win:setFrame(f)
    end)
end

-----------------------------------------------
-- push windows between monitors
-----------------------------------------------

hs.hotkey.bind({"cmd", "ctrl", "alt"}, "space", function()
    local win = hs.window.focusedWindow()
    local win = hs.window.focusedWindow()
    local nextScreen = win:screen():previous()
    win:moveToScreen(nextScreen)
end)

-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

local hyper = {"shift", "cmd"}
hs.hints.hintChars = utils.strToTable('1234567890ABCDEFBCDEFGHIJKLMNOPQRSTUVWXYZ')

hs.hotkey.bind(hyper, "i", function()
    hs.hints.windowHints()
end)

-----------------------------------------------
-- Hyper hjkl to switch window focus
-----------------------------------------------

hs.hotkey.bind(hyper, 'k', function()
    hs.window.focusedWindow():focusWindowNorth()
end)

hs.hotkey.bind(hyper, 'j', function()
    hs.window.focusedWindow():focusWindowSouth()
end)

hs.hotkey.bind(hyper, 'l', function()
    hs.window.focusedWindow():focusWindowEast()
end)

hs.hotkey.bind(hyper, 'h', function()
    hs.window.focusedWindow():focusWindowWest()
end)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

