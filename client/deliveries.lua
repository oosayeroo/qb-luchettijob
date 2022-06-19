local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}

RegisterNetEvent('qb-luchettijob:deliveries:StartPizzaRun', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"argue"})
    QBCore.Functions.Progressbar('falar_empregada', 'Getting Delivery...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    TriggerEvent('animations:client:EmoteCommandStart', {"c"})
    QBCore.Functions.Notify('You Accepted a delivery! Take it to the customers house!', 'primary', 7500)
    
    Wait(Config.PizzaRunWait)
    TriggerServerEvent('qb-luchettijob:server:GetPizzaItem')
    startpizzarun()
    end)
end)

RegisterNetEvent('qb-luchettijob:deliveries:KnockDoor', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"knock"})
    QBCore.Functions.Progressbar('falar_empregada', 'Knocking Door...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()
    QBCore.Functions.Notify('Delivery Successful, Take the receipt back', 'primary', 7500)

    TriggerServerEvent('qb-luchettijob:server:KnockDoor')
    end)
end)

--[[RegisterNetEvent('qb-luchettijob:deliveries:CashReceipt', function()
    TriggerEvent('animations:client:EmoteCommandStart', {"type"})
    QBCore.Functions.Progressbar('falar_empregada', 'Filing Invoice...', 5000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    }, {}, {}, {}, function()

        TriggerServerEvent('qb-luchettijob:server:CashReceipt')
    end)
end) ]]

RegisterNetEvent("qb-luchettijob:deliveries:CashReceipt")
AddEventHandler("qb-luchettijob:deliveries:CashReceipt", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ReceiptCheck', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Filing Invoice..", 4000, false, true, {
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
                    			QBCore.Functions.Notify("You Filed a Receipt", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to do this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

function startpizzarun()
    local prob = math.random(1, 10)

    if prob == 1 then
        SetNewWaypoint(Config.PizzaDelivery1)
        startpizzarun1()
    elseif prob == 2 then
        SetNewWaypoint(Config.PizzaDelivery2)
        startpizzarun2()
    elseif prob == 3 then
        SetNewWaypoint(Config.PizzaDelivery3)
        startpizzarun3()
    elseif prob == 4 then
        SetNewWaypoint(Config.PizzaDelivery4)
        startpizzarun4()
    elseif prob == 5 then
        SetNewWaypoint(Config.PizzaDelivery5)
        startpizzarun5()
    elseif prob == 6 then
        SetNewWaypoint(Config.PizzaDelivery6)
        startpizzarun6()
    elseif prob == 7 then
        SetNewWaypoint(Config.PizzaDelivery7)
        startpizzarun7()
    elseif prob == 8 then
        SetNewWaypoint(Config.PizzaDelivery8)
        startpizzarun8()
    elseif prob == 9 then
        SetNewWaypoint(Config.PizzaDelivery9)
        startpizzarun9()
    elseif prob == 10 then
        SetNewWaypoint(Config.PizzaDelivery10)
        startpizzarun10()
    end
end

function startpizzarun1()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery1, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun2()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery2, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun3()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery3, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun4()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery4, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun5()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery5, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun6()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery6, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun7()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery7, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun8()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery8, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun9()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery9, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end

function startpizzarun10()
    exports['qb-target']:AddBoxZone("pizza-delivery", Config.PizzaDelivery10, 1, 1, {
        name="pizza-delivery",
        heading=0,
        debugpoly = false,
    }, {
        options = {
            {
            event = "qb-luchettijob:deliveries:KnockDoor",
            icon = "far fa-box",
            label = "Knock Door",
            item = "pizza-delivery",
            },
        },
        distance = 2.5
    })
end
