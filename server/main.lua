local QBCore = exports['qbx-core']:GetCoreObject()
local VehicleNitrous = {}

RegisterNetEvent('tackle:server:TacklePlayer', function(playerId)
    TriggerClientEvent('tackle:client:GetTackled', playerId)
end)

QBCore.Commands.Add('id', 'Check Your ID #', {}, false, function(source)
    TriggerClientEvent('QBCore:Notify', source,  'ID: '..source)
end)

QBCore.Functions.CreateUseableItem('harness', function(source, item)
    TriggerClientEvent('seatbelt:client:UseHarness', source, item)
end)

RegisterNetEvent('equip:harness', function(item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if item.metadata.harnessuses == nil then
        item.metadata.harnessuses = 19
        exports.ox_inventory:SetMetadata(src, item.slot, item.metadata)
    elseif item.metadata.harnessuses == 1 then
        exports.ox_inventory:RemoveItem(src, 'harness', 1)
    else
        item.metadata.harnessuses -= 1
        exports.ox_inventory:SetMetadata(src, item.slot, item.metadata)
    end
end)

RegisterNetEvent('seatbelt:DoHarnessDamage', function(hp, data)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    local harness = exports.ox_inventory:Search(src, 1, 'harness')

    if not Player then return end

    if hp == 0 then
        exports.ox_inventory:RemoveItem(src, 'harness', 1, data.metadata, data.slot)
    else
        harness.metadata.harnessuses -= 1
        exports.ox_inventory:SetMetadata(src, harness.slot, harness.metadata)
    end
end)

RegisterNetEvent('qb-carwash:server:washCar', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if not Player then return end

    if Player.Functions.RemoveMoney('cash', Config.DefaultPrice, 'car-washed') then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    elseif Player.Functions.RemoveMoney('bank', Config.DefaultPrice, 'car-washed') then
        TriggerClientEvent('qb-carwash:client:washCar', src)
    else
        TriggerClientEvent('QBCore:Notify', src, 'You dont have enough money..', 'error')
    end
end)

QBCore.Commands.Add('jobinfo', 'Character - Job Info!', {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("chat:addMessage", source, {
        type = "JobInfo",
        typeColor = '#0061ff',
        header = Player.PlayerData.charinfo.firstname.." " ..Player.PlayerData.charinfo.lastname,
        args = { "Job: "..Player.PlayerData.job.name.." \n ".."Job Level: "..Player.PlayerData.job.grade.level.." \n ".."Job Grade Name: "..Player.PlayerData.job.grade.name.." \n ".."Payment: "..Player.PlayerData.job.payment }
    })
end)

QBCore.Commands.Add("myinfo", "Check Your player info", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('QBCore:Notify', source, 'Char ID: '..Player.PlayerData.cid..' '.. 'Citizen ID: '..Player.PlayerData.citizenid..' '.. "SID: "..source..' '..'Name: '..Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname)
    TriggerClientEvent("chat:addMessage", source, {
        type = "Info",
        typeColor = '#0061ff',
        header = Player.PlayerData.charinfo.firstname.." " ..Player.PlayerData.charinfo.lastname,
        args = { 'Char ID: '..Player.PlayerData.cid..' \n '.. 'Citizen ID: '..Player.PlayerData.citizenid..' \n '.. "SID: "..source..' \n '..'Name: '..Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname }
    })
end)

--admin
-- als een resource start dan verzend een notificatie naar de admins
-- AddEventHandler('onResourceStart', function(resource)
--     local Players = QBCore.Functions.GetPlayers()
--     for i=1, #Players, 1 do
--   		if QBCore.Functions.HasPermission(Players[i], "god") or QBCore.Functions.HasPermission(Players[i], "admin") then
--     		QBCore.Functions.Notify(Players[i], "Resource start: " .. resource, "success")
-- 		end
-- 	end
-- end)

-- als een resource stop dan verzend een notificatie naar de admins
-- AddEventHandler('onResourceStop', function(resource)
--     local Players = QBCore.Functions.GetPlayers()
--     for i=1, #Players, 1 do
--   		if QBCore.Functions.HasPermission(Players[i], "god") or QBCore.Functions.HasPermission(Players[i], "admin") then
--     		QBCore.Functions.Notify(Players[i], "Resource stop: " .. resource, "error")
-- 		end
-- 	end
-- end)

-- als een resource error dan verzend een notificatie naar de admins
-- AddEventHandler('onResourceError', function(resource, err)
--     local Players = QBCore.Functions.GetPlayers()
--     for i=1, #Players, 1 do
--   		if QBCore.Functions.HasPermission(Players[i], "god") or QBCore.Functions.HasPermission(Players[i], "admin") then
--     		QBCore.Functions.Notify(Players[i], "Resource error: " .. resource .. " error: " .. err, "error")
--         end
--     end
-- end)

-- player joining notify and loaded in

AddEventHandler('playerDropped', function(reason) 
    local src = source
    local name = GetPlayerName(src)
	local Players = QBCore.Functions.GetPlayers()
    local serverid = src
    local citizenid = QBCore.Functions.GetPlayer(src).PlayerData.citizenid

    for i=1, #Players, 1 do
  		if QBCore.Functions.HasPermission(Players[i], "god") or QBCore.Functions.HasPermission(Players[i], "admin") then
    		QBCore.Functions.Notify(Players[i], "Ontkoppelen: " .. GetPlayerName(src) .. " | " .. reason, "error", "4000")
            if reason == "exiting" then
                QBCore.Functions.Notify(Players[i], "Mogelijk gecombatlogd: " .. name .. "|" .. citizenid .. "ID: " .. serverid .. "|", "error", "4000")
                print ("[QBCore] Mogelijk gecombatlogd: " .. name .. "|" .. citizenid .. "ID: " .. serverid .. "|", "error", "4000")
            end
        end
	end
end)

AddEventHandler('playerConnecting', function(playerName, setKickReason, deferrals)
	local Players = QBCore.Functions.GetPlayers()
	local src = source
	
    for i=1, #Players, 1 do
  		if QBCore.Functions.HasPermission(Players[i], "god") or QBCore.Functions.HasPermission(Players[i], "admin") then
            local steam = GetPlayerName(src)
            if string.find(steam:lower(), "<script") then
                QBCore.Functions.Notify(Players[i], "Er probeerde iemand in te loggen met een script tag. Geblockt. Groetjes Coby.", "success", "4000")
            else
                QBCore.Functions.Notify(Players[i], "Aan het verbinden: " .. GetPlayerName(src), "success", "4000")
            end
		end
	end
end)

AddEventHandler('txAdmin:events:announcement', function(eventData)
    CreateThread(function()
        QBCore.Functions.Notify(eventData.message, "success", "4000")
        Wait(1000)
    end)
    print("TXADMIN: " .. eventData.message .. " | " .. eventData.author)
end)

-- 1 Minutes Reminder
AddEventHandler('txAdmin:events:scheduledRestart', function(eventData)
    if eventData.secondsRemaining == 60 then
        QBCore.Functions.Notify("TXADMIN: " .. eventData.message, "success", "4000")
    end
end)

