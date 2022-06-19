local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent("qb-luchettijob:bill:player")
AddEventHandler("qb-luchettijob:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'weedshop' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender) VALUES (:citizenid, :amount, :society, :sender)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname
                        })
                        TriggerClientEvent('qb-phone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, 'Invoice Successfully Sent', 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, 'New Invoice Received')
                    else
                        TriggerClientEvent('QBCore:Notify', source, 'Must Be A Valid Amount Above 0', 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, 'You Cannot Bill Yourself', 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, 'Player Not Online', 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, 'No Access', 'error')
        end
end)

----Starters------------------------------------------------

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientBreadstick', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bread = Ply.Functions.GetItemByName("bread")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    if bread ~= nil and puree ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientMozzarellaCarrozza', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cheese = Ply.Functions.GetItemByName("cheese")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    if cheese ~= nil and puree ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientPolpette', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local meatball = Ply.Functions.GetItemByName("meatballs")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    if meatball ~= nil and puree ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientPrawnCocktail', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local prawns = Ply.Functions.GetItemByName("prawns")
    local prawnsauce = Ply.Functions.GetItemByName("pcocktail-sauce")
    local salad = Ply.Functions.GetItemByName("salad")
    if prawns ~= nil and prawnsauce ~= nil and salad ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientGarlicBread', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bread = Ply.Functions.GetItemByName("bread")
    local garlic = Ply.Functions.GetItemByName("garlic")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    if bread ~= nil and garlic ~= nil and puree ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-----Drinks------------------------------------

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientAperitivo', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientNegroni', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientCampari', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientAmericano', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientBellini', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientSpritz', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local glass = Ply.Functions.GetItemByName("drinks-glass")
    if glass ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

-----Pizzas----------------------------------------------------

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientMargherita', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cheese = Ply.Functions.GetItemByName("cheese")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    local dough = Ply.Functions.GetItemByName("dough")
    if cheese ~= nil and puree ~= nil and dough ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientPepperoni', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cheese = Ply.Functions.GetItemByName("cheese")
    local pepperoni = Ply.Functions.GetItemByName("pepperoni")
    local dough = Ply.Functions.GetItemByName("dough")
    if cheese ~= nil and pepperoni ~= nil and dough ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientHawaiian', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local cheese = Ply.Functions.GetItemByName("cheese")
    local pineapple = Ply.Functions.GetItemByName("pineapple")
    local dough = Ply.Functions.GetItemByName("dough")
    if cheese ~= nil and pineapple ~= nil and dough ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientVegetable', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local salad = Ply.Functions.GetItemByName("salad")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    local dough = Ply.Functions.GetItemByName("dough")
    if salad ~= nil and puree ~= nil and dough ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

----Mains---------------------------------

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientFiorentina', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local bsteak = Ply.Functions.GetItemByName("beef-steak")
    local fries = Ply.Functions.GetItemByName("fries")
    local salad = Ply.Functions.GetItemByName("salad")
    local tomatoslice = Ply.Functions.GetItemByName("tomato-slice")
    if bsteak ~= nil and fries ~= nil and salad ~= nil and tomatoslice ~= nil then
        cb(true)
    else
        cb(false)
    end
end)


QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientVealMilanese', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local veal = Ply.Functions.GetItemByName("veal-steak")
    local pasta = Ply.Functions.GetItemByName("pasta")
    local salad = Ply.Functions.GetItemByName("salad")
    local tomatoslice = Ply.Functions.GetItemByName("tomato-slice")
    if veal ~= nil and pasta ~= nil and salad ~= nil and tomatoslice ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientRavioli', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local pasta = Ply.Functions.GetItemByName("pasta")
    local puree = Ply.Functions.GetItemByName("tomato-puree")
    if pasta ~= nil and puree ~= nil then
        cb(true)
    else
        cb(false)
    end
end)

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ingredientCarbonara', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local pasta = Ply.Functions.GetItemByName("pasta")
    local sauce = Ply.Functions.GetItemByName("cream-sauce")
    if pasta ~= nil and sauce ~= nil then
        cb(true)
    else
        cb(false)
    end
end)


QBCore.Functions.CreateUseableItem("glass-box", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-luchettijob:Open-Box", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("meat-tray", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-luchettijob:Open-Meat-Tray", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("tomato-box", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-luchettijob:Open-Tomato-Box", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("salad-box", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("qb-luchettijob:Open-Salad-Box", src, item.name)
    end
end)



----------DELIVERY STUFF----------------

RegisterNetEvent('qb-luchettijob:server:GetPizzaItem', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item = 'pizza-delivery'
    local quantity = 1

    Player.Functions.AddItem(item, quantity)
end)

RegisterNetEvent('qb-luchettijob:server:KnockDoor', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local item1 = 'pizza-delivery'
    local item2 = 'pizza-receipt'
    local quantity = 1

    Player.Functions.RemoveItem(item1, quantity)
    Player.Functions.AddItem(item2, quantity)
end)

RegisterNetEvent('qb-luchettijob:server:CashReceipt', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    local payment = Config.PizzaRunPayment

    Player.Functions.RemoveItem('pizza-receipt', 1)
    Player.Functions.AddMoney('bank', payment)
end) 

QBCore.Functions.CreateCallback('qb-luchettijob:server:get:ReceiptCheck', function(source, cb)
    local src = source
    local Ply = QBCore.Functions.GetPlayer(src)
    local preceipt = Ply.Functions.GetItemByName("pizza-receipt")
    if preceipt ~= nil then
        cb(true)
    else
        cb(false)
    end
end)