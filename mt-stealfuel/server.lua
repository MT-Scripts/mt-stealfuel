local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('mt-stealfuel:server:DarJerryCan', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    Player.Functions.RemoveItem('jerrycan_combustivel', 1)
    Player.Functions.AddItem('weapon_petrolcan', 1)
    TriggerClientEvent('inventory:client:ItemBox', source, QBCore.Shared.Items["weapon_petrolcan"], "add")
end)