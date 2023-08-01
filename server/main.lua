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

QBCore.Commands.Add("charinfo", "Character info!", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('QBCore:Notify', source, "Firstname: "..Player.PlayerData.charinfo.firstname..", ".."Lastname: "..Player.PlayerData.charinfo.lastname..", ".."Nationality: "..Player.PlayerData.charinfo.nationality..", ".."Birthdate: "..Player.PlayerData.charinfo.birthdate..", ".."Phone Number: "..Player.PlayerData.charinfo.phone..", ".."Cash: "..Player.PlayerData.money.cash..", ".."Bank: "..Player.PlayerData.money.bank.." ".."Job: "..Player.PlayerData.job.name.." ".."ID: "..Player.PlayerData.charinfo.cid.." ".."Citizen: "..Player.PlayerData.citizenid.." ".."Gang: "..Player.PlayerData.gang.label)
    Citizen.Wait(5000)
end)

QBCore.Commands.Add('jobinfo', 'Character - Job Info!', {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("QBCore:Notify", source, "Job: "..Player.PlayerData.job.name..", ".."Job Level: "..Player.PlayerData.job.grade.level..", ".."Job Grade Name: "..Player.PlayerData.job.grade.name..", ".."Payment: "..Player.PlayerData.job.payment)
    Citizen.Wait(5000)
end)

QBCore.Commands.Add("myinfo", "Check Your player info", {}, false, function(source)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent('QBCore:Notify', source, 'Char ID: '..Player.PlayerData.cid..' '.. 'Citizen ID: '..Player.PlayerData.citizenid..' '.. "SID: "..source..' '..'Name: '..Player.PlayerData.charinfo.firstname..' '..Player.PlayerData.charinfo.lastname)
end)