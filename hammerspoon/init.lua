hs.hotkey.bind({"ctrl"}, "t", function()
    local warp = hs.application.get("Warp")
    if warp == nil then
        hs.application.launchOrFocus("/Applications/Warp.app")
    elseif warp:isFrontmost() then
        warp:hide()
    else
        local space = hs.spaces.focusedSpace()
        local win = warp:focusedWindow()
        hs.spaces.moveWindowToSpace(win, space)
        win:focus()
    end
end)
