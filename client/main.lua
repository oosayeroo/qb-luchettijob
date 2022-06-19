local QBCore = exports['qb-core']:GetCoreObject()
isLoggedIn = false
local onDuty = true
PlayerJob = {}

function DrawText3Ds(x, y, z, text)
	SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(true)
    AddTextComponentString(text)
    SetDrawOrigin(x,y,z, 0)
    DrawText(0.0, 0.0)
    local factor = (string.len(text)) / 370
    DrawRect(0.0, 0.0+0.0125, 0.017+ factor, 0.03, 0, 0, 0, 75)
    ClearDrawOrigin()
end

Citizen.CreateThread(function()
    Luchetti = AddBlipForCoord(290.06, -961.77, 29.42)
    SetBlipSprite (Luchetti, 77)
    SetBlipDisplay(Luchetti, 4)
    SetBlipScale  (Luchetti, 0.7)
    SetBlipAsShortRange(Luchetti, true)
    SetBlipColour(Luchetti, 1)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentSubstringPlayerName("Luchetti")
    EndTextCommandSetBlipName(Luchetti)
end) 


RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
        if PlayerData.job.onduty then
            if PlayerData.job.name == "luchetti" then
                TriggerServerEvent("QBCore:ToggleDuty")
            end
        end
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
    onDuty = PlayerJob.onduty
end)

RegisterNetEvent('QBCore:Client:SetDuty')
AddEventHandler('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
end)

RegisterNetEvent("qb-luchettijob:DutyB")
AddEventHandler("qb-luchettijob:DutyB", function()
    TriggerServerEvent("QBCore:ToggleDuty")
end)

-----Restaurant Stuff

RegisterNetEvent("qb-luchettijob:Table1")
AddEventHandler("qb-luchettijob:Table1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable1", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table2")
AddEventHandler("qb-luchettijob:Table2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable2", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table3")
AddEventHandler("qb-luchettijob:Table3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable3", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table4")
AddEventHandler("qb-luchettijob:Table4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable4", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table5")
AddEventHandler("qb-luchettijob:Table5", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable5", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table6")
AddEventHandler("qb-luchettijob:Table6", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable6")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable6", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table7")
AddEventHandler("qb-luchettijob:Table7", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable7")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable7", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table8")
AddEventHandler("qb-luchettijob:Table8", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable8")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable8", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Table9")
AddEventHandler("qb-luchettijob:Table9", function()
    TriggerEvent("inventory:client:SetCurrentStash", "LuchettiTable9")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "LuchettiTable9", {
        maxweight = 10000,
        slots = 6,
    })
end)

RegisterNetEvent("qb-luchettijob:Shelf1")
AddEventHandler("qb-luchettijob:Shelf1", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luchettishelf1")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luchettishelf1", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-luchettijob:Shelf2")
AddEventHandler("qb-luchettijob:Shelf2", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luchettishelf2")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luchettishelf2", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-luchettijob:Shelf3")
AddEventHandler("qb-luchettijob:Shelf3", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luchettishelf3")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luchettishelf3", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-luchettijob:Shelf4")
AddEventHandler("qb-luchettijob:Shelf4", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luchettishelf4")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luchettishelf4", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-luchettijob:Shelf5")
AddEventHandler("qb-luchettijob:Shelf5", function()
    TriggerEvent("inventory:client:SetCurrentStash", "luchettishelf5")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "luchettishelf5", {
        maxweight = 250000,
        slots = 40,
    })
end)

RegisterNetEvent("qb-luchettijob:WineFridge")
AddEventHandler("qb-luchettijob:WineFridge", function()
    TriggerEvent("inventory:client:SetCurrentStash", "winefridge")
    TriggerServerEvent("inventory:server:OpenInventory", "stash", "winefridge", {
        maxweight = 250000,
        slots = 40,
    })
end)


---drinks menu--------------------
RegisterNetEvent("qb-luchettijob:Aperitivo")
AddEventHandler("qb-luchettijob:Aperitivo", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientAperitivo', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Aperitivo..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "aperitivo", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["aperitivo"], "add")
                    			QBCore.Functions.Notify("You made Aperitivo", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:Negroni")
AddEventHandler("qb-luchettijob:Negroni", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientNegroni', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Negroni..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "negroni", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["negroni"], "add")
                    			QBCore.Functions.Notify("You made Negroni", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:Campari")
AddEventHandler("qb-luchettijob:Campari", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientCampari', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Campari..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "campari", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["campari"], "add")
                    			QBCore.Functions.Notify("You made Campari", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:Americano")
AddEventHandler("qb-luchettijob:Americano", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientAmericano', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Americano..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "americano", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["americano"], "add")
                    			QBCore.Functions.Notify("You made Americano", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:Bellini")
AddEventHandler("qb-luchettijob:Bellini", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientBellini', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Bellini..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "bellini", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["bellini"], "add")
                    			QBCore.Functions.Notify("You made Bellini", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:Spritz")
AddEventHandler("qb-luchettijob:Spritz", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientSpritz', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Spritz..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "drinks-glass", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "spritz", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["spritz"], "add")
                    			QBCore.Functions.Notify("You made Spritz", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

-----starters--------------------------------------------------------------------------------------

RegisterNetEvent("qb-luchettijob:MakeBreadstick")
AddEventHandler("qb-luchettijob:MakeBreadstick", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientBreadstick', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Meal..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "bread", 1)
                    			TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "breadsticks", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["breadsticks"], "add")
                    			QBCore.Functions.Notify("You made a meal", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-luchettijob:MakeMozzarellaCarrozza")
AddEventHandler("qb-luchettijob:MakeMozzarellaCarrozza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientMozzarellaCarrozza', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Mozzarella In Carrozza..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
                    			TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "mozzarella-carrozza", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mozarella-carrozza"], "add")
                    			QBCore.Functions.Notify("You made Mozzarella In Carrozza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the items to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end  
end)

RegisterNetEvent("qb-luchettijob:MakePolpette")
AddEventHandler("qb-luchettijob:MakePolpette", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientPolpette', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Polpette Della Nonna..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "meatballs", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "polpette-della-nonna", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["polpette-della-nonna"], "add")
                    			QBCore.Functions.Notify("You made Polpette Della Nonna", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeGarlicBread")
AddEventHandler("qb-luchettijob:MakeGarlicBread", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientGarlicBread', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Garlic Bread..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "bread", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "garlic", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "garlic-bread", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["garlic-bread"], "add")
                    			QBCore.Functions.Notify("You made Garlic Bread", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakePrawnCocktail")
AddEventHandler("qb-luchettijob:MakePrawnCocktail", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientPrawnCocktail', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Prawn Cocktail..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "prawns", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "pcocktail-sauce", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "salad", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "prawn-cocktail", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["prawn-cocktail"], "add")
                    			QBCore.Functions.Notify("You made Prawn Cocktail", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)


-----Pizzas

RegisterNetEvent("qb-luchettijob:MakeMargherita")
AddEventHandler("qb-luchettijob:MakeMargherita", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientMargherita', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Margherita..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "dough", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "margherita-pizza", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["margherita-pizza"], "add")
                    			QBCore.Functions.Notify("You made a Margherita Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakePepperoni")
AddEventHandler("qb-luchettijob:MakePepperoni", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientPepperoni', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Pepperoni..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "pepperoni", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "dough", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "pepperoni-pizza", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["pepperoni-pizza"], "add")
                    			QBCore.Functions.Notify("You made a Pepperoni Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeHawaiian")
AddEventHandler("qb-luchettijob:MakeHawaiian", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientHawaiian', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Hawaiian..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "cheese", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "pineapple", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "dough", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "hawaiian-pizza", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["hawaiian-pizza"], "add")
                    			QBCore.Functions.Notify("You made a Hawaiian Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeVegetablePizza")
AddEventHandler("qb-luchettijob:MakeVegetablePizza", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientVegetable', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Vegetable..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "salad", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
                    TriggerServerEvent('QBCore:Server:RemoveItem', "dough", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "vegetable-pizza", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["vegetable-pizza"], "add")
                    			QBCore.Functions.Notify("You made a Vegetable Pizza", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

---mains

RegisterNetEvent("qb-luchettijob:MakeFiorentina")
AddEventHandler("qb-luchettijob:MakeFiorentina", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientFiorentina', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making Fiorentina..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "beef-steak", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "salad", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "fries", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-slice", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "fiorentina", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["fiorentina"], "add")
                    			QBCore.Functions.Notify("You made a plate of Fiorentina", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeVealMilanese")
AddEventHandler("qb-luchettijob:MakeVealMilanese", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientVealMilanese', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Veal Milanese..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "veal-steak", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "pasta", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "salad", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-slice", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "veal-milanese", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["veal-milanese"], "add")
                    			QBCore.Functions.Notify("You made a Veal Milanese", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeRavioli")
AddEventHandler("qb-luchettijob:MakeRavioli", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientRavioli', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Ravioli Dish..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "pasta", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-puree", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "ravioli", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["ravioli"], "add")
                    			QBCore.Functions.Notify("You made a Ravioli Dish", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

RegisterNetEvent("qb-luchettijob:MakeCarbonara")
AddEventHandler("qb-luchettijob:MakeCarbonara", function()
    if onDuty then
    	QBCore.Functions.TriggerCallback('qb-luchettijob:server:get:ingredientCarbonara', function(HasItems)  
    		if HasItems then
				QBCore.Functions.Progressbar("pickup_sla", "Making A Spaghetti Carbonara..", 4000, false, true, {
					disableMovement = true,
					disableCarMovement = true,
					disableMouse = false,
					disableCombat = true,
				}, {
					animDict = "mp_common",
					anim = "givetake1_a",
					flags = 8,
				}, {}, {}, function() -- Done
					TriggerServerEvent('QBCore:Server:RemoveItem', "pasta", 1)
					TriggerServerEvent('QBCore:Server:RemoveItem', "cream-sauce", 1)
					TriggerServerEvent('QBCore:Server:AddItem', "spaghetti-carbonara", 1)
                    			TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["spaghetti-carbonara"], "add")
                    			QBCore.Functions.Notify("You made Spaghetti Carbonara", "success")
				end, function()
					QBCore.Functions.Notify("Cancelled..", "error")
				end)
			else
   				QBCore.Functions.Notify("You dont have the right stuff to make this", "error")
			end
		end)
	else 
		QBCore.Functions.Notify("You must be Clocked into work", "error")
	end
end)

---Prep stuff------------------------------

RegisterNetEvent("qb-luchettijob:Open-Box")
AddEventHandler("qb-luchettijob:Open-Box", function()
		TriggerServerEvent('QBCore:Server:RemoveItem', "glass-box", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "drinks-glass", 10)
end)

RegisterNetEvent("qb-luchettijob:Open-Tomato-Box")
AddEventHandler("qb-luchettijob:Open-Tomato-Box", function()
		TriggerServerEvent('QBCore:Server:RemoveItem', "tomato-box", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "tomato", 20)
end)

RegisterNetEvent("qb-luchettijob:Open-Meat-Tray")
AddEventHandler("qb-luchettijob:Open-Meat-Tray", function()
		TriggerServerEvent('QBCore:Server:RemoveItem', "meat-tray", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "beef-patty", 5)
		TriggerServerEvent('QBCore:Server:AddItem', "veal-patty", 5)
		TriggerServerEvent('QBCore:Server:AddItem', "uncooked-meatballs", 5)
		TriggerServerEvent('QBCore:Server:AddItem', "prawns", 5)
end)

RegisterNetEvent("qb-luchettijob:Open-Salad-Box")
AddEventHandler("qb-luchettijob:Open-Salad-Box", function()
		TriggerServerEvent('QBCore:Server:RemoveItem', "salad-box", 1)
		TriggerServerEvent('QBCore:Server:AddItem', "garlic", 5)
	    TriggerServerEvent('QBCore:Server:AddItem', "salad", 10)
		TriggerServerEvent('QBCore:Server:AddItem', "bread", 5)
end)


RegisterNetEvent("qb-luchettijob:PrepFries")
AddEventHandler("qb-luchettijob:PrepFries", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           PrepFries()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'potato-sack')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeFries")
AddEventHandler("qb-luchettijob:MakeFries", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeFries()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'uncooked-fries')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeMashedPotato")
AddEventHandler("qb-luchettijob:MakeMashedPotato", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeMashedPotato()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'potato-sack')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeChips")
AddEventHandler("qb-luchettijob:MakeChips", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeChips()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'uncooked-fries')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:ChopTomato")
AddEventHandler("qb-luchettijob:ChopTomato", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           ChopTomato()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'tomato')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeTomatoPuree")
AddEventHandler("qb-luchettijob:MakeTomatoPuree", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
            MakeTomatoPuree()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'tomato')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:ChopCheese")
AddEventHandler("qb-luchettijob:ChopCheese", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
            ChopCheese()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'cheese-wheel')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeBeefSteak")
AddEventHandler("qb-luchettijob:MakeBeefSteak", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeBeefSteak()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'beef-patty')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)


RegisterNetEvent("qb-luchettijob:MakeVealSteak")
AddEventHandler("qb-luchettijob:MakeVealSteak", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeVealSteak()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'veal-patty')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:MakeMeatballs")
AddEventHandler("qb-luchettijob:MakeMeatballs", function()
    if onDuty then
    QBCore.Functions.TriggerCallback('QBCore:HasItem', function(HasItem)
        if HasItem then
           MakeMeatballs()
        else
            QBCore.Functions.Notify("You don't have the right stuff..", "error")
        end
      end, 'uncooked-meatballs')
    else
        QBCore.Functions.Notify("You must be Clocked into work", "error")
    end
end)

RegisterNetEvent("qb-luchettijob:Gelato")
AddEventHandler("qb-luchettijob:Gelato", function()
	QBCore.Functions.Progressbar("pickup", "Getting Gelato..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "gelato", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["gelato"], "add")
	QBCore.Functions.Notify("Whipped up some Gelato", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end)

RegisterNetEvent("qb-luchettijob:FudgeCake")
AddEventHandler("qb-luchettijob:FudgeCake", function()
	QBCore.Functions.Progressbar("pickup", "Getting Fudge Cake..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "fudge-cake", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["fudge-cake"], "add")
	QBCore.Functions.Notify("Made some Fudge Cake", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end)

RegisterNetEvent("qb-luchettijob:Tiramisu")
AddEventHandler("qb-luchettijob:Tiramisu", function()
	QBCore.Functions.Progressbar("pickup", "Getting Tiramisu..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "tiramisu", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tiramisu"], "add")
	QBCore.Functions.Notify("Whipped up some Tiramisu", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end)

RegisterNetEvent("qb-luchettijob:Cheesecake")
AddEventHandler("qb-luchettijob:Cheesecake", function()
	QBCore.Functions.Progressbar("pickup", "Getting Cheesecake..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "cheesecake", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cheesecake"], "add")
	QBCore.Functions.Notify("Whipped up some Cheesecake", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end)

RegisterNetEvent("qb-luchettijob:PannaCotta")
AddEventHandler("qb-luchettijob:PannaCotta", function()
	QBCore.Functions.Progressbar("pickup", "Getting Panna Cotta..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "panna-cotta", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["panna-cotta"], "add")
	QBCore.Functions.Notify("Whipped up some Panna Cotta", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end)

-- Functions --
function PrepFries()
	TriggerServerEvent('QBCore:Server:RemoveItem', "potato-sack", 1)
	QBCore.Functions.Progressbar("pickup", "Chopping Potatoes..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "uncooked-fries", 5)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["uncooked-fries"], "add")
	QBCore.Functions.Notify("Prepped Some Fries", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeFries()
	TriggerServerEvent('QBCore:Server:RemoveItem', "uncooked-fries", 1)
	QBCore.Functions.Progressbar("pickup", "Frying..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "fries", 5)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["fries"], "add")
	QBCore.Functions.Notify("Made Some Fries", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeChips()
	TriggerServerEvent('QBCore:Server:RemoveItem', "uncooked-fries", 1)
	QBCore.Functions.Progressbar("pickup", "Making Chips..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "potato-chips", 10)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["potato-chips"], "add")
	QBCore.Functions.Notify("Made Some Chips", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeMashedPotato()
	TriggerServerEvent('QBCore:Server:RemoveItem', "potato-sack", 1)
	QBCore.Functions.Progressbar("pickup", "Mashing The Potatoes..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "mashed-potato", 3)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["mashed-potato"], "add")
	QBCore.Functions.Notify("Mashed Some Potatoes", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function ChopTomato()
	TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
	QBCore.Functions.Progressbar("pickup", "Chopping Tomato..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "tomato-slice", 5)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tomato-slice"], "add")
	QBCore.Functions.Notify("You Chopped a Tomato", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeTomatoPuree()
	TriggerServerEvent('QBCore:Server:RemoveItem', "tomato", 1)
	QBCore.Functions.Progressbar("pickup", "Making Tomato Puree..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "tomato-puree", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["tomato-puree"], "add")
	QBCore.Functions.Notify("You Made Some Tomato Puree", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function ChopCheese()
	TriggerServerEvent('QBCore:Server:RemoveItem', "cheese-wheel", 1)
	QBCore.Functions.Progressbar("pickup", "Chopping Cheese Block..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "cheese", 10)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["cheese"], "add")
	QBCore.Functions.Notify("Chopped up Cheese", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeBeefSteak()
	TriggerServerEvent('QBCore:Server:RemoveItem', "beef-patty", 1)
	QBCore.Functions.Progressbar("pickup", "Grilling a Steak..", 4000, false, true, {
	    disableMovement = true,
	    disableCarMovement = true,
	    disableMouse = false,
	    disableCombat = true,
	},{
	    animDict = "amb@prop_human_bbq@male@base",
	    anim = "base",
	    flags = 8,
	    }
	)
	Citizen.Wait(4000)
	TriggerServerEvent('QBCore:Server:AddItem', "beef-steak", 1)
	TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["beef-steak"], "add")
	QBCore.Functions.Notify("You Grilled a Beef Steak", "success")
	StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end


function MakeVealSteak()
    TriggerServerEvent('QBCore:Server:RemoveItem', "veal-patty", 1)
    QBCore.Functions.Progressbar("pickup", "Grilling a Steak..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }    
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "veal-steak", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["veal-steak"], "add")
    QBCore.Functions.Notify("You Grilled a Veal Steak", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end

function MakeMeatballs()
    TriggerServerEvent('QBCore:Server:RemoveItem', "uncooked-meatballs", 1)
    QBCore.Functions.Progressbar("pickup", "Making some Meatballs..", 4000, false, true, {
        disableMovement = true,
        disableCarMovement = true,
        disableMouse = false,
        disableCombat = true,
    },{
        animDict = "amb@prop_human_bbq@male@base",
        anim = "base",
        flags = 8,
    }    
)
    Citizen.Wait(4000)
    TriggerServerEvent('QBCore:Server:AddItem', "meatballs", 1)
    TriggerEvent("inventory:client:ItemBox", QBCore.Shared.Items["meatballs"], "add")
    QBCore.Functions.Notify("You Made Some Meatballs", "success")
    StopAnimTask(PlayerPedId(), "amb@prop_human_bbq@male@base", "base", 1.0)
end



RegisterNetEvent("qb-luchettijob:shop")
AddEventHandler("qb-luchettijob:shop", function()
    TriggerServerEvent("inventory:server:OpenInventory", "shop", "luchetti", Config.Items)
end)

