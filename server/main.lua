local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("qb-luchettijob:bill:player")
AddEventHandler("qb-luchettijob:bill:player", function(playerId, amount)
        local biller = QBCore.Functions.GetPlayer(source)
        local billed = QBCore.Functions.GetPlayer(tonumber(playerId))
        local amount = tonumber(amount)
        if biller.PlayerData.job.name == 'luchetti' then
            if billed ~= nil then
                if biller.PlayerData.citizenid ~= billed.PlayerData.citizenid then
                    if amount and amount > 0 then
                        MySQL.Async.insert('INSERT INTO phone_invoices (citizenid, amount, society, sender, sendercitizenid) VALUES (:citizenid, :amount, :society, :sender, :sendercitizenid)', {
                            ['citizenid'] = billed.PlayerData.citizenid,
                            ['amount'] = amount,
                            ['society'] = biller.PlayerData.job.name,
                            ['sender'] = biller.PlayerData.charinfo.firstname,
                            ['sendercitizenid'] = biller.PlayerData.citizenid
                        })
                        TriggerClientEvent('qs-smartphonephone:RefreshPhone', billed.PlayerData.source)
                        TriggerClientEvent('QBCore:Notify', source, Locale[Config.Lang].success['sentinvoice'], 'success')
                        TriggerClientEvent('QBCore:Notify', billed.PlayerData.source, Locale[Config.Lang].general['gotinvoice'])
                    else
                        TriggerClientEvent('QBCore:Notify', source, Locale[Config.Lang].error['abovezero'], 'error')
                    end
                else
                    TriggerClientEvent('QBCore:Notify', source, Locale[Config.Lang].error['billself'], 'error')
                end
            else
                TriggerClientEvent('QBCore:Notify', source, Locale[Config.Lang].error['notonline'], 'error')
            end
        else
            TriggerClientEvent('QBCore:Notify', source, Locale[Config.Lang].error['nojob'], 'error')
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

local ReceiptWorth = {
    ["pizza-receipt"]  =  Config.PizzaRunPayment,
}

RegisterServerEvent("qb-luchettijob:server:GetPizzaItem")
AddEventHandler("qb-luchettijob:server:GetPizzaItem", function(deliveryamount)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    Player.Functions.AddItem('pizza-delivery', deliveryamount) 
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
    local price = 0
    local Player = QBCore.Functions.GetPlayer(src)
    
    local xItem = Player.Functions.GetItemsByName(ReceiptWorth)
    if xItem ~= nil then
        for k, v in pairs(Player.PlayerData.items) do
            if Player.PlayerData.items[k] ~= nil then
                if ReceiptWorth[Player.PlayerData.items[k].name] ~= nil then
                    price = price + (ReceiptWorth[Player.PlayerData.items[k].name] * Player.PlayerData.items[k].amount)
                    Player.Functions.RemoveItem(Player.PlayerData.items[k].name, Player.PlayerData.items[k].amount, k)
                    Player.Functions.AddMoney("bank", price)
                    TriggerClientEvent('QBCore:Notify', src, "You Cashed all receipts for $"..price)
                end
            end
        end
    else
        TriggerClientEvent('QBCore:Notify', src, "You have no receipts..")
    end

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
