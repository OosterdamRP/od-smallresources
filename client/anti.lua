local QBCore = exports['qbx-core']:GetCoreObject()

-- CreateThread(function()
--     SetDisableAmbientMeleeMove(PlayerPedId(), true)
--         while true do
--                 Wait(1)
--                 local ped = PlayerPedId()
--                 if IsPedUsingActionMode(ped) then
--             SetPedUsingActionMode(ped, -1, -1, 1)
--         end
--     end
-- end)

-- CreateThread(function()-- probably just add this to an existing script
--     while true do
--         Wait(500)-- can set to 0 if needed 
--         local gamepad = GetLastInputMethod(2)
--         if not gamepad then
--             SetPlayerTargetingMode(3)--set targeting to "free-aim" if a controller is being used
--         else
--             Wait(2000)--wait if the player is using a keyboard
--         end
--     end
-- end)

CreateThread(function()
    while true do
        Wait(100)
        local ped = PlayerPedId()
        if IsPedOnFoot(ped) and not IsPedSwimming(ped) and (IsPedRunning(ped) or IsPedSprinting(ped)) and not IsPedClimbing(ped) and IsPedJumping(ped) and not IsPedRagdoll(ped) then
            local chance_result = math.random()
            --You can change the chance as you want! Just changed 0.2!
            if chance_result < 0.2 then 
                Wait(600)
                ShakeGameplayCam('SMALL_EXPLOSION_SHAKE', 0.08)
                QBCore.Functions.Notify('Je bent te uitgeput!', 'error', 2500)
                SetPedToRagdoll(ped, 5000, 1, 2)
            else
                Wait(2000)
            end
        end
    end
end)

-- Citizen.CreateThread(function()
--     while true do
--         if PlayerPedId() ~= lastped then
--             lastped = PlayerPedId()
--             SetPedCanLosePropsOnDamage(PlayerPedId(), false, 0)
--         end
--         Wait(100)
--     end
-- end)

RegisterCommand('propstuck', function()
    for k, v in pairs(GetGamePool('CObject')) do
        if IsEntityAttachedToEntity(PlayerPedId(), v) then
            SetEntityAsMissionEntity(v, true, true)
            DeleteObject(v)
            DeleteEntity(v)
        end
    end
end)

Citizen.CreateThread(function()
    while true do
            if IsPedInAnyVehicle(PlayerPedId(), false) then
            TriggerEvent("propstuck")
        end
        Wait(100)
    end
end)

-- local vehicleClassDisableControl = {
--     [0] = true, --compacts
--     [1] = true, --sedans
--     [2] = true, --SUV's
--     [3] = true, --coupes
--     [4] = true, --muscle
--     [5] = true, --sport classic
--     [6] = true, --sport
--     [7] = true, --super
--     [8] = false, --motorcycle
--     [9] = true, --offroad
--     [10] = true, --industrial
--     [11] = true, --utility
--     [12] = true, --vans
--     [13] = false, --bicycles
--     [14] = false, --boats
--     [15] = false, --helicopter
--     [16] = false, --plane
--     [17] = true, --service
--     [18] = true, --emergency
--     [19] = false --military
-- }

-- -- Main thread
-- CreateThread(function()
--     while true do
--     -- Loop forever and update every frame
--     Wait(0)
--         -- Get player, vehicle and vehicle class
--         local player = PlayerPedId()
--         local vehicle = GetVehiclePedIsIn(player, false)
--         if not vehicle then
--             Wait(1500)
--         else
--                 --Not in vehicle, so wait to reduce resource usage
--             local vehicleClass = GetVehicleClass(vehicle)
--             -- Disable control if player is in the driver seat and vehicle class matches array
--             if ((GetPedInVehicleSeat(vehicle, -1) == player) and vehicleClassDisableControl[vehicleClass]) then
--                 -- Check if vehicle is in the air and disable L/R and UP/DN controls
--                 if IsEntityInAir(vehicle) then
--                     DisableControlAction(2, 59)
--                     DisableControlAction(2, 60)
--                 else
--                     Wait(100) --Not in air, so wait to reduce resource usage
--                 end
--             else
--                 Wait(1500) --Not in driver seat, so wait to reduce resource usage
--             end
--         end
--     end
-- end)

CreateThread(function ()
    if GetIsTaskActive(cache.ped, 204) then
        ClearPedTasksImmediately(cache.ped)
        TaskEnterVehicle(cache.ped, vehicle, 20000, -1, 1.0, 1, 0)
    end
end)