local QBCore = exports['qb-core']:GetCoreObject()
PlayerData = {}
local pedspawned = false
local onDuty = true
PlayerJob = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
function QBCore.Functions.GetPlayerData(cb)
    if cb then
        cb(QBCore.PlayerData)
    else
        return QBCore.PlayerData
    end
end

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(job)
     	PlayerData.job = job
end)

RegisterNetEvent('QBCore:Player:SetPlayerData')
AddEventHandler('QBCore:Player:SetPlayerData', function(val)
	PlayerData = val
end)

Citizen.CreateThread(function()
    exports['qb-target']:SpawnPed({
        model = Config.LuchettiGaragePed,
        coords = Config.LuchettiGaragePedLocation, 
        minusOne = true, --may have to change this if your ped is in the ground
        freeze = true, 
        invincible = true, 
        blockevents = true,
        scenario = 'WORLD_HUMAN_DRUG_DEALER',
        target = { 
            options = {{type="client",event = "garage:LuchettiGarage",icon = "fas fa-car",label = "Mario"}},
          distance = 2.5,
        },
    })
end)

function loadAnimDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        Citizen.Wait(5)
    end
end

RegisterNetEvent('qb-luchettijob:garage')
AddEventHandler('qb-luchettijob:garage', function(lj)
    local vehicle = lj.vehicle
    local coords = Config.SpawnCarLocation
    if PlayerData.job.name == "luchetti" then
        if vehicle == Config.LuchettiVehicleModel then		
            QBCore.Functions.SpawnVehicle(vehicle, function(veh)
                SetVehicleNumberPlateText(veh, Config.BikePlate..tostring(math.random(1000, 9999)))
                exports['LegacyFuel']:SetFuel(veh, 100.0)
                SetEntityHeading(veh, coords.w)
                TaskWarpPedIntoVehicle(PlayerPedId(), veh, -1)
                TriggerEvent("vehiclekeys:client:SetOwner", GetVehicleNumberPlateText(veh))
                SetVehicleEngineOn(veh, true, true)
            end, coords, true)
        end
    else
        QBCore.Functions.Notify(Locale[Config.Lang].error['nojob'], 'error')
    end
end)

RegisterNetEvent('qb-luchettijob:storecar')
AddEventHandler('qb-luchettijob:storecar', function()
    QBCore.Functions.Notify(Locale[Config.Lang].success['storeveh'])
    local car = GetVehiclePedIsIn(PlayerPedId(),true)
    NetworkFadeOutEntity(car, true,false)
    Citizen.Wait(2000)
    QBCore.Functions.DeleteVehicle(car)
end)

RegisterNetEvent('garage:LuchettiGarage', function()
    exports['qb-menu']:openMenu({
        {header = "| Luchetti "..Locale[Config.Lang].general['garage'].." |",isMenuHeader = true, },
        {header = Config.LuchettiVehicleModel,txt = Locale[Config.Lang].general['delveh'],params = {event = "qb-luchettijob:garage",args = {vehicle = Config.LuchettiVehicleModel,}}},
        {header = Locale[Config.Lang].general['takedel'],txt = Locale[Config.Lang].general['takehouse'],params = {event = "qb-luchettijob:deliveries:StartPizzaRun",args = {}}},  
        {header = Locale[Config.Lang].general['storeveh'],txt = Locale[Config.Lang].general['storeveh'],params = {event = "qb-luchettijob:storecar",args = {}}},	
        {header = Locale[Config.Lang].general['close'].." (ESC)",isMenuHeader = true,},	
    })
end)
