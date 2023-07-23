script.on_init(function(event)
    if remote.interfaces["freeplay"] then
        local items = remote.call("freeplay", "get_ship_items")
        items["iron-plate"] = 8
        remote.call("freeplay", "set_ship_items", items)
    end
end)