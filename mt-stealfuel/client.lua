local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('mt-stealfuel:client:RoubarCombustivel', function()
    local veiculo = QBCore.Functions.GetClosestVehicle()

    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)

        if HasItem then
            SetVehicleDoorOpen(veiculo, 4, false, false)
            QBCore.Functions.Progressbar('roubar_combustivel', 'STEALING VEHICLE FUEL...', 7500, false, true, {
                disableMovement = true,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            }, {
                animDict = 'mini@repair',
                anim = 'fixing_a_ped',
                flags = 16,
            }, {}, {}, function()
                local fuelLevel = exports["LegacyFuel"]:GetFuel(veiculo)
                ClearPedTasks(PlayerPedId())
                SetVehicleDoorShut(veiculo, 4, false, false)
                if fuelLevel > 0 then
                    TriggerServerEvent('mt-stealfuel:server:DarJerryCan')
                    QBCore.Functions.Notify('You have robbed vehicle fuel!', 'success', 7500)
                    exports['LegacyFuel']:SetFuel(veiculo, 0)
                else
                    QBCore.Functions.Notify('This vehicle does not have enough fuel!', 'error', 7500)
                end
            end)
        else
            QBCore.Functions.Notify('You dont have a hose!', 'error', 7500)
        end
    end, 'mangueira_combustivel')
end)

CreateThread(function()
    local bones = {
        "engine"
    }
    exports["qb-target"]:AddTargetBone(bones, {
        options = {
            {
                event = "mt-stealfuel:client:RoubarCombustivel",
                icon = "fas fa-wrench",
                label = "Rob vehicle fuel",
                item = "jerrycan_combustivel"
            },
        },
        distance = 1.5
    })
end)
