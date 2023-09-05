QBCore = exports['qbx-core']:GetCoreObject()

local inventory <const> = exports.ox_inventory
local player <const> = LocalPlayer.state

RegisterCommand('creativechest', function()
    if not QBCore.Functions.HasPermission(player.source, 'god') then return print("Je moet admin zijn.") end
    if (inventory:openInventory('stash', 'creativechest')) then return end
    TriggerServerEvent('ox:creativechest')
    inventory:openInventory('stash', 'creativechest')
end, false)

RegisterCommand('trash', function()
    if not QBCore.Functions.HasPermission(player.source, 'god') then return print("Je moet admin zijn.") end
    if (inventory:openInventory('stash', 'admintrash')) then return end
    TriggerServerEvent('ox:admintrash')
    inventory:openInventory('stash', 'admintrash')
end, false)