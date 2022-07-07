

Discord - https://discord.gg/3WYz3zaqG5

# A Luchetti Job for qbcore by oosayeroo Scripts
## Please note

- Please make sure u use the latest dependencies aswell as core for this in order to work.

- This Job has been tested on the latest build as of 08/6/22.


## Dependencies :

QBCore Framework - https://github.com/qbcore-framework/qb-core

PolyZone - https://github.com/mkafrin/PolyZone

qb-target - https://github.com/BerkieBb/qb-target

qb-input - https://github.com/qbcore-framework/qb-input

qb-menu - https://github.com/qbcore-framework/qb-menu

MLO from k4mb1 Maps - https://www.k4mb1maps.com/package/4672259

## Credits : 

- BerkieB for his qb-target.
- K4MB1 for letting me use his MLO and for the encouragement

## Add to qb-smallresources/server/consumeables.lua. 
```
--food

QBCore.Functions.CreateUseableItem("breadsticks", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("mozzarella-carrozza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("polpette-della-nonna", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("prawn-cocktail", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("garlic-bread", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("veal-milanese", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fiorentina", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("ravioli", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("spaghetti-carbonara", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("margherita-pizza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("pepperoni-pizza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("hawaiian-pizza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("vegetable-pizza", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("gelato", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fudge-cake", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("tiramisu", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("cheesecake", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("panna-cotta", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("fries", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("mashed-potato", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

QBCore.Functions.CreateUseableItem("salad", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Eat", src, item.name)
    end
end)

--drinks
QBCore.Functions.CreateUseableItem("americano", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	if Player.Functions.RemoveItem(item.name, 1, item.slot) then
        TriggerClientEvent("consumables:client:Drink", src, item.name)
    end
end)

--alcohol
QBCore.Functions.CreateUseableItem("aperitivo", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("negroni", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("campari", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("bellini", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

QBCore.Functions.CreateUseableItem("spritz", function(source, item)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    TriggerClientEvent("consumables:client:DrinkAlcohol", src, item.name)
end)

```



## Add to qb-smallresources/config.lua
```
Consumeables = {
--drink
    ["americano"] = math.random(40, 50),

--alcohol
    ["aperitivo"] = math.random(35, 54),
    ["negroni"] = math.random(40, 50),
    ["campari"] = math.random(40, 50),
    ["bellini"] = math.random(40, 50),
    ["spritz"] = math.random(30, 40),

--food
    ["breadsticks"] = math.random(35, 54),
    ["mozzarella-carrozza"] = math.random(35, 54),
    ["polpette-della-nonna"] = math.random(35, 54),
    ["garlic-bread"] = math.random(35, 54),
    ["prawn-cocktail"] = math.random(35, 54),
    ["veal-milanese"] = math.random(35, 54),
    ["fiorentina"] = math.random(35, 54),
    ["ravioli"] = math.random(35, 54),
    ["spaghetti-carbonara"] = math.random(35, 54),
    ["margherita-pizza"] = math.random(35, 54),
    ["pepperoni-pizza"] = math.random(35, 54),
    ["hawaiian-pizza"] = math.random(35, 54),
    ["vegetable-pizza"] = math.random(35, 54),
    ["gelato"] = math.random(35, 54),
    ["fudge-cake"] = math.random(35, 54),
    ["tiramisu"] = math.random(35, 54),
    ["cheesecake"] = math.random(35, 54),
    ["panna-cotta"] = math.random(35, 54),
    ["fries"] = math.random(35, 54),
    ["mashed-potato"] = math.random(35, 54),
    ["salad"] = math.random(35, 54),
    

```

## Insert into @qb-core/shared/items.lua 

```
QBShared.Items = {
--qb-luchettijob
	
	--drinks
	['aperitivo'] 				 	 = {['name'] = 'aperitivo', 			  	  	['label'] = 'Aperitivo', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'aperitivo.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['negroni'] 				 	 = {['name'] = 'negroni', 			  	     	['label'] = 'Negroni', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'negroni.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['campari'] 				 	 = {['name'] = 'campari', 			  	     	['label'] = 'Campari', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'campari.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['americano'] 				 	 = {['name'] = 'americano', 			     	['label'] = 'Americano', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'americano.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['bellini'] 				 	 = {['name'] = 'bellini', 			  	    	['label'] = 'Bellini', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bellini.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['spritz'] 				     	 = {['name'] = 'spritz', 			    	  	['label'] = 'Spritz', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'spritz.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

	--ingredients
	['potato-sack'] 				 = {['name'] = 'potato-sack', 			  	  	['label'] = 'Potato Sack', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'potato-sack.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['uncooked-fries'] 				 = {['name'] = 'uncooked-fries', 			   	['label'] = 'Uncooked Fries', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'uncooked-fries.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['fries'] 				 	     = {['name'] = 'fries', 			  	     	['label'] = 'Fries', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fries.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['mashed-potato'] 			 	 = {['name'] = 'mashed-potato', 			  	['label'] = 'Mashed Potato', 	    	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mashed-potato.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['bread'] 				    	 = {['name'] = 'bread', 			    	  	['label'] = 'Bread', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'bread.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['tomato'] 				    	 = {['name'] = 'tomato', 			    	  	['label'] = 'Tomato', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tomato.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['tomato-slice'] 				 = {['name'] = 'tomato-slice', 			  	  	['label'] = 'Tomato Slice', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tomato-slice.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['tomato-puree'] 				 = {['name'] = 'tomato-puree', 			  	  	['label'] = 'Tomato Puree', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tomato-puree.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['beef-patty'] 				 	 = {['name'] = 'beef-patty', 			  	  	['label'] = 'Beef Patty', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'beef-patty.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['veal-patty'] 				 	 = {['name'] = 'veal-patty', 			  	  	['label'] = 'Veal Patty', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'veal-patty.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['beef-steak'] 				 	 = {['name'] = 'beef-steak', 			  	  	['label'] = 'Beef Steak', 	    		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'beef-steak.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['veal-steak'] 				 	 = {['name'] = 'veal-steak', 			  	  	['label'] = 'Veal Steak', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'veal-steak.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['uncooked-meatballs'] 		 	 = {['name'] = 'uncooked-meatballs', 	  	  	['label'] = 'Raw Meatballs', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'uncooked-meatballs.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['meatballs'] 				 	 = {['name'] = 'meatballs', 			  	  	['label'] = 'Meatballs', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'meatballs.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['cheese-wheel'] 				 = {['name'] = 'cheese-wheel', 			  	  	['label'] = 'Cheese Wheel', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cheese-wheel.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['cheese'] 				 	     = {['name'] = 'cheese', 			    	  	['label'] = 'Cheese', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cheese.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['garlic'] 				    	 = {['name'] = 'garlic', 			    	  	['label'] = 'Garlic', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'garlic.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['salad-box'] 				 	 = {['name'] = 'salad-box', 			  	  	['label'] = 'Salad Box', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'salad-box.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['salad'] 				    	 = {['name'] = 'salad', 			     	  	['label'] = 'Salad', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'salad.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['potato-chips'] 				 = {['name'] = 'potato-chips', 			  	  	['label'] = 'Potato Chips', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'potato-chips.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['dough'] 				    	 = {['name'] = 'dough', 			  	    	['label'] = 'Dough', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'dough.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['prawns'] 				    	 = {['name'] = 'prawns', 			  	     	['label'] = 'Prawns', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'prawns.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pcocktail-sauce'] 		 	 = {['name'] = 'pcocktail-sauce', 		  	  	['label'] = 'Cocktail Sauce', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pcocktail-sauce.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pasta'] 				    	 = {['name'] = 'pasta', 			  	    	['label'] = 'Pasta', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pasta.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['cream-sauce'] 				 = {['name'] = 'cream-sauce', 			  	  	['label'] = 'Creamy Sauce', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cream-sauce.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['drinks-glass'] 				 = {['name'] = 'drinks-glass', 			  	  	['label'] = 'Glass', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'drinks-glass.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['glass-box'] 				 	 = {['name'] = 'glass-box', 			  	  	['label'] = 'Box of Drinking Glass',	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'glass-box.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['meat-tray'] 				 	 = {['name'] = 'meat-tray', 			  	  	['label'] = 'Meat Tray',            	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'meat-tray.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['tomato-box'] 				 	 = {['name'] = 'tomato-box', 			  	  	['label'] = 'Tomato Box',            	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tomato-box.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pineapple'] 				 	 = {['name'] = 'pineapple', 			  	  	['label'] = 'Pineapple',            	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pineapple.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pepperoni'] 				 	 = {['name'] = 'pepperoni', 			  	  	['label'] = 'Pepperoni',            	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pepperoni.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pizza-delivery'] 				 = {['name'] = 'pizza-delivery', 			   	['label'] = 'Pizza Box',            	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pizza-delivery.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pizza-receipt'] 		    	 = {['name'] = 'pizza-receipt', 			   	['label'] = 'Receipt',               	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'pizza-receipt.png', 	    ['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	
	---starters--
	['breadsticks'] 				 = {['name'] = 'breadsticks', 			  	  	['label'] = 'Breadsticks', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'breadsticks.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['mozzarella-carrozza'] 		 = {['name'] = 'mozzarella-carrozza', 	 	  	['label'] = 'Mozzarella In Carrozza',	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'mozzarella-carrozza.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['polpette-della-nonna'] 	 	 = {['name'] = 'polpette-della-nonna', 		  	['label'] = 'Polpette Della Nonna',		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'polpette-della-nonna.png',	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['garlic-bread'] 				 = {['name'] = 'garlic-bread', 			  	  	['label'] = 'Garlic Bread', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'garlic-bread.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['prawn-cocktail'] 				 = {['name'] = 'prawn-cocktail', 			  	['label'] = 'Prawn Cocktail', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'prawn-cocktail.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

	--mains--
	['veal-milanese'] 				 = {['name'] = 'veal-milanese', 			   	['label'] = 'Veal Milanese', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'veal-milanese.png', 		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['fiorentina'] 				 	 = {['name'] = 'fiorentina', 			  	  	['label'] = 'Fiorentina', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fiorentina.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['ravioli'] 				 	 = {['name'] = 'ravioli', 			  	    	['label'] = 'Ravioli', 					['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'ravioli.png', 				['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['spaghetti-carbonara'] 	 	 = {['name'] = 'spaghetti-carbonara', 	 	  	['label'] = 'Spaghetti Carbonara', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'spaghetti-carbonara.png', 	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

	--Pizzas--
	['margherita-pizza'] 		 	 = {['name'] = 'margherita-pizza', 			   	['label'] = 'Margherita Pizza', 		['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'margherita-pizza.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['pepperoni-pizza'] 		 	 = {['name'] = 'pepperoni-pizza', 			   	['label'] = 'Pepperoni Pizza', 	    	['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'margherita-pizza.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['hawaiian-pizza'] 		    	 = {['name'] = 'hawaiian-pizza', 			   	['label'] = 'Hawaiian Pizza', 		    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'margherita-pizza.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['vegetable-pizza'] 		 	 = {['name'] = 'vegetable-pizza', 			   	['label'] = 'Vegetable Pizza', 		    ['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'margherita-pizza.png',		['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	
	--desserts--
	['gelato'] 				    	 = {['name'] = 'gelato', 			  	    	['label'] = 'Luchetti Gelato', 			['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'gelato.png', 			   	['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['fudge-cake'] 				 	 = {['name'] = 'fudge-cake', 			  	  	['label'] = 'Fudge Cake', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'fudge-cake.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['tiramisu'] 				 	 = {['name'] = 'tiramisu', 			  	    	['label'] = 'Tiramisu', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'tiramisu.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['cheesecake'] 				 	 = {['name'] = 'cheesecake', 			  	  	['label'] = 'Cheesecake', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'cheesecake.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},
	['panna-cotta'] 				 = {['name'] = 'panna-cotta', 			  	  	['label'] = 'Panna Cotta', 				['weight'] = 1000, 		['type'] = 'item', 		['image'] = 'panna-cotta.png', 			['unique'] = false, 	['useable'] = true, 	['shouldClose'] = true,	   ['combinable'] = nil,   ['description'] = 'For all the thirsty out there'},

}

```

## Insert Contents of @luchettijob/Images into @qb-inventory/HTML/Images


## Insert into @qb-core/shared/jobs.lua 
```
QBShared.Jobs = {
    ["luchetti"] = {
		label = "Luchetti Pizzaria",
		defaultDuty = true,
		grades = {
            ['0'] = {
                name = "Trainee",
                payment = 25
            },
			['1'] = {
                name = "server",
                payment = 50
            },
            ['2'] = {
                name = "delivery",
                payment = 50
            },
            ['3'] = {
                name = "chef",
                payment = 75
            },
            ['4'] = {
                name = "manager",
                payment = 100
            },
			['5'] = {
                name = "Owner",
                isboss = true,
                payment = 150
            },
        },
	},
}		
```

## Insert into @qb-target - init.lua - config.targetmodels
``` 
["luchettigarage"] = {
		models = {
			"s_m_y_busboy_01"
		},
		options = {
			{
				type = "client",
				event = "qb-menu:garage:LuchettiGarage",
				icon = "fas fa-bike",
				label = "Mario",
				job = "luchetti",
			}
		},
		distance = 2.5,
	},

```
