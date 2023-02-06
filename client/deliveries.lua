local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}
local pizzaDrop = 0
local deliveryamount = Config.PizzaJobs
local haspizzarun = false

RegisterNetEvent('qb-luchettijob:deliveries:StartPizzaRun', function()
    if not haspizzarun then
        TriggerEvent('animations:client:EmoteCommandStart', {"argue"})
        QBCore.Functions.Progressbar('falar_empregada', Locale[Config.Lang].general['getdel'], 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {}, {}, {}, function()
        TriggerEvent('animations:client:EmoteCommandStart', {"c"})
        QBCore.Functions.Notify(Locale[Config.Lang].success['gotdel'], 'primary', 7500)
        
        Wait(Config.PizzaRunWait)
        TriggerServerEvent('qb-luchettijob:server:GetPizzaItem', deliveryamount)
        startpizzarun()
        end)
    else
        QbCore.Functions.Notify(Locale[Config.Lang].error['hasdel'], 'error', 2500)
    end
end)

RegisterNetEvent('qb-luchettijob:deliveries:KnockDoor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"knock"})
    QBCore.Functions.Progressbar('falar_empregada', Locale[Config.Lang].general['knock'], 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    QBCore.Functions.Notify(Locale[Config.Lang].success['donedel'], 'primary', 7500)
    TriggerServerEvent('qb-luchettijob:server:KnockDoor')
    startpizzarun()
    end)
end)

RegisterNetEvent("qb-luchettijob:deliveries:CashReceipt")
AddEventHandler("qb-luchettijob:deliveries:CashReceipt", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ReceiptCheck', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", Locale[Config.Lang].general['filereceipt'], 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
                    TriggerServerEvent('qb-luchettijob:server:CashReceipt')
					TriggerServerEvent('QBCore:Server:RemoveItem', "pizza-receipt", 1)
                    QBCore.Functions.Notify(Locale[Config.Lang].success['filereceipt'], "success")
				end, function()
					QBCore.Functions.Notify(Locale[Config.Lang].error['cancelled'], "error")
				end)
			else
   				QBCore.Functions.Notify(Locale[Config.Lang].error['needreceipt'], "error")
			end
		end)
	else 
		QBCore.Functions.Notify(Locale[Config.Lang].error['clockin'], "error")
	end
end)

function startpizzarun()
    if pizzaDrop < deliveryamount then
        local prob = Config.PizzaDeliverySpots[math.random(1, #Config.PizzaDeliverySpots)]
            exports['qb-target']:AddBoxZone("pizzarun1", prob, 3, 3, {
                name="pizzarun1",
                heading=0,
                debugpoly = Config.DebugLuchettiPoly,
            }, {
                options = {{event = "qb-luchettijob:deliveries:KnockDoor",icon = "far fa-pizza-slice",label = Locale[Config.Lang].general['knock'],item = "pizza-delivery",},},
            distance = 2.5
        })
        SetNewWaypoint(prob)
        pizzaDrop = pizzaDrop + 1
    else
        QBCore.Functions.Notify(Locale[Config.Lang].success['pizzadone'], 'info', 5000)
        pizzaDrop = 0
        haspizzarun = false
    end
end
