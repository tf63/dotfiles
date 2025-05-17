-- example
-- hs.hotkey.bind({"alt"}, "1", function()
--     local kitty = hs.application.get("kitty")
--     if kitty == nil then
--         hs.application.launchOrFocus("/Applications/kitty.app")
--     else
--         local space = hs.spaces.focusedSpace()
--         local win = kitty:focusedWindow()
--         hs.spaces.moveWindowToSpace(win, space)
--         win:focus()
--     end
-- end)
-- 別のディスプレイでアクティブになっている場合は除外したい

-- kitty
hs.hotkey.bind({"alt"}, "1", function()
    local app = hs.application.get("kitty")

    if app == nil then
        hs.application.launchOrFocus("/Applications/kitty.app")
    else
        local space = hs.spaces.focusedSpace()
        local win = app:focusedWindow()
        hs.spaces.moveWindowToSpace(win, space)
        win:focus()
    end
end)

-- vscode
hs.hotkey.bind({"alt"}, "2", function()
    local app = hs.application.get("Code")

    if app == nil then
        hs.application.launchOrFocus("/Applications/Visual Studio Code.app")
    else
        local space = hs.spaces.focusedSpace()
        local win = app:focusedWindow()
        hs.spaces.moveWindowToSpace(win, space)
        win:focus()
    end
end)

-- arc
hs.hotkey.bind({"alt"}, "3", function()
    local app = hs.application.get("Arc")

    if app == nil then
        hs.application.launchOrFocus("/Applications/Arc.app")
    else
        local space = hs.spaces.focusedSpace()
        local win = app:focusedWindow()
        hs.spaces.moveWindowToSpace(win, space)
        win:focus()
    end
end)

-- Warp
-- hs.hotkey.bind({"alt"}, "1", function()
--     local app = hs.application.get("Warp")
--     if app == nil then
--         hs.application.launchOrFocus("/Applications/Warp.app")
--     elseif app:isFrontmost() then
--         app:hide()
--     else
--         local space = hs.spaces.focusedSpace()
--         local win = app:focusedWindow()
--         hs.spaces.moveWindowToSpace(win, space)
--         win:focus()
--     end
-- end)
