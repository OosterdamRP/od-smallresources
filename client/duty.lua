local QBCore = exports['qbx-core']:GetCoreObject()

RegisterCommand('duty', function()
    onDuty = not onDuty
    TriggerServerEvent("police:server:UpdateCurrentCops")
    TriggerServerEvent("QBCore:ToggleDuty")
    TriggerServerEvent("police:server:UpdateBlips")
    TriggerServerEvent("qb-log:server:CreateLog", "yourlogname", "Your text", "green", "**"..GetPlayerName(src) .. "** used a duty command")
end)