-- Auto-detect game and load the matching script
local scripts = {
    [107778070777162] = "https://flowauth.net/v1/loaders/66384aee2a5b61cedbbada5646c7306b.lua", -- Steal An Egg
    [124216119978534] = "https://flowauth.net/v1/loaders/af94660c756692787ad77a5542b92eab.lua", -- Ride A Pet
}

local url = scripts[game.PlaceId]

if url then
    local success, err = pcall(function()
        loadstring(game:HttpGet(url))()
    end)

    if not success then
        warn("[AutoLoad] Failed to load: " .. tostring(err))
    end
else
    warn("[AutoLoad] Unsupported game. PlaceId: " .. tostring(game.PlaceId))
end
