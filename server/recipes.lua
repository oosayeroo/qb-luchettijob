local QBCore = exports['qb-core']:GetCoreObject()

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