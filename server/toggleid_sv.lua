onlinePlayers = {}
OD = {}
OD.which = "name" -- "steam", "steamv2", "license", "licensev2", "name"

RegisterServerEvent('od-showid:add-id')
AddEventHandler('od-showid:add-id', function()
    TriggerClientEvent("od-showid:client:add-id", source, onlinePlayers)
    local topText = "undefined " .. OD.which
    if OD.which == "name" then 
        topText = GetPlayerName(source)
    end
    onlinePlayers[tostring(source)] = topText
    TriggerClientEvent("od-showid:client:add-id", -1, topText, tostring(source))
end)

AddEventHandler('playerDropped', function(reason)
    onlinePlayers[tostring(source)] = nil
end)