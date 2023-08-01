local toggleID = false
local isKeyHeld = false
local maxDistance = 10.0 -- Set your desired maximum distance

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        isKeyHeld = IsControlPressed(0, 137) -- Caps key
        if not isKeyHeld and toggleID then
            toggleID = false
        elseif isKeyHeld and not toggleID then
            toggleID = true
        end
    end
end)

-- Functions
local function DrawText3D(x, y, z, text)
    SetDrawOrigin(x, y, z + 1.0, 0)
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0 + 0.0125, 0.017 + factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

local function GetPlayers()
    local players = {}
    local activePlayers = GetActivePlayers()
    for i = 1, #activePlayers do
        local player = activePlayers[i]
        local ped = GetPlayerPed(player)
        if DoesEntityExist(ped) then
            players[#players + 1] = player
        end
    end
    return players
end

local function GetPlayersFromCoords(coords, distance)
    local players = GetPlayers()
    local closePlayers = {}

    coords = coords or GetEntityCoords(PlayerPedId())
    distance = distance or 5.0

    for i = 1, #players do
        local player = players[i]
        local target = GetPlayerPed(player)
        local targetCoords = GetEntityCoords(target)
        local targetDistance = #(targetCoords - coords)
        if targetDistance <= distance then
            closePlayers[#closePlayers + 1] = player
        end
    end

    return closePlayers
end

-- Thread to display player IDs
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if toggleID then
            local playerCoords = GetEntityCoords(PlayerPedId())
            local nearbyPlayers = GetPlayersFromCoords(playerCoords, maxDistance)
            for _, player in ipairs(nearbyPlayers) do
                local playerId = GetPlayerServerId(player)
                local playerPed = GetPlayerPed(player)
                local playerCoords = GetEntityCoords(playerPed)
                DrawText3D(playerCoords.x, playerCoords.y, playerCoords.z, '[' .. playerId .. ']')
            end
        end
    end
end)