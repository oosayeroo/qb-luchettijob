local QBCore = exports['qb-core']:GetCoreObject()

------------NEW INVENTORY UPDATE------------

RegisterNetEvent('qb-luchettijob:server:makingaperitivo', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('aperitivo', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingnegroni', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('negroni', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingcampari', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('campari', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingamericano', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('americano', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingbellini', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('bellini', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingspritz', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('drinks-glass', 1)
    Player.Functions.AddItem('spritz', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingbreadsticks', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.RemoveItem('bread', 1)
    Player.Functions.AddItem('breadsticks', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingmozzarella', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cheese', 1)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.AddItem('mozzarella-carrozza', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingpolpette', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.RemoveItem('meatballs', 1)
    Player.Functions.AddItem('polpette-della-nonna', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makinggarlicbread', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('bread', 1)
    Player.Functions.RemoveItem('garlic', 1)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.AddItem('garlic-bread', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingcocktail', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('prawns', 1)
    Player.Functions.RemoveItem('pcocktail-sauce', 1)
    Player.Functions.RemoveItem('salad', 1)
    Player.Functions.AddItem('prawn-cocktail', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingpizza1', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cheese', 1)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.RemoveItem('dough', 1)
    Player.Functions.AddItem('margherita-pizza', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingpizza2', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cheese', 1)
    Player.Functions.RemoveItem('dough', 1)
    Player.Functions.RemoveItem('pepperoni', 1)
    Player.Functions.AddItem('pepperoni-pizza', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingpizza3', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cheese', 1)
    Player.Functions.RemoveItem('dough', 1)
    Player.Functions.RemoveItem('pineapple', 1)
    Player.Functions.AddItem('hawaiian-pizza', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingpizza4', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('salad', 1)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.RemoveItem('dough', 1)
    Player.Functions.AddItem('vegetable-pizza', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingfiorentina', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('beef-steak', 1)
    Player.Functions.RemoveItem('salad', 1)
    Player.Functions.RemoveItem('fries', 1)
    Player.Functions.RemoveItem('tomato-slice', 1)
    Player.Functions.AddItem('fiorentina', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingmilanese', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('salad', 1)
    Player.Functions.RemoveItem('veal-steak', 1)
    Player.Functions.RemoveItem('pasta', 1)
    Player.Functions.RemoveItem('tomato-slice', 1)
    Player.Functions.AddItem('veal-milanese', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingravioli', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('pasta', 1)
    Player.Functions.RemoveItem('tomato-puree', 1)
    Player.Functions.AddItem('ravioli', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makingcarbonara', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('pasta', 1)
    Player.Functions.RemoveItem('cream-sauce', 1)
    Player.Functions.AddItem('spaghetti-carbonara', 1)
end)

RegisterNetEvent('qb-luchettijob:server:opendrinks', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('glass-box', 1)
    Player.Functions.AddItem('drinks-glass', Config.GlassBoxAmount)
end)

RegisterNetEvent('qb-luchettijob:server:opentombox', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('tomato-box', 1)
    Player.Functions.AddItem('tomato', Config.TomatoBoxAmount)
end)

RegisterNetEvent('qb-luchettijob:server:openmeattray', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('meat-tray', 1)
    Player.Functions.AddItem('beef-patty', Config.MeatTrayAmount)
    Player.Functions.AddItem('veal-patty', Config.MeatTrayAmount)
    Player.Functions.AddItem('uncooked-meatballs', Config.MeatTrayAmount)
    Player.Functions.AddItem('prawns', Config.MeatTrayAmount)
end)

RegisterNetEvent('qb-luchettijob:server:opensaladbox', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('salad-box', 1)
    Player.Functions.AddItem('garlic', Config.SaladBoxAmount)
    Player.Functions.AddItem('salad', Config.SaladBoxAmount)
    Player.Functions.AddItem('bread', Config.SaladBoxAmount)
end)

RegisterNetEvent('qb-luchettijob:server:givegelato', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('gelato', 1)
end)

RegisterNetEvent('qb-luchettijob:server:givefudge', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('fudge-cake', 1)
end)

RegisterNetEvent('qb-luchettijob:server:givetiramisu', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('tiramisu', 1)
end)

RegisterNetEvent('qb-luchettijob:server:givecheesecake', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('cheesecake', 1)
end)

RegisterNetEvent('qb-luchettijob:server:givepanna', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.AddItem('panna-cotta', 1)
end)

RegisterNetEvent('qb-luchettijob:server:prepfries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('potato-sack', 1)
    Player.Functions.AddItem('uncooked-fries', Config.PotatoSackAmount)
end)

RegisterNetEvent('qb-luchettijob:server:makefries', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('uncooked-fries', 1)
    Player.Functions.AddItem('fries', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makechips', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('uncooked-fries', 1)
    Player.Functions.AddItem('potato-chips', Config.PotatoChipsAmount)
end)

RegisterNetEvent('qb-luchettijob:server:makemash', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('potato-sack', 1)
    Player.Functions.AddItem('mashed-potato', 1)
end)

RegisterNetEvent('qb-luchettijob:server:maketomslice', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('tomato', 1)
    Player.Functions.AddItem('tomato-slice', Config.TomSliceAmount)
end)

RegisterNetEvent('qb-luchettijob:server:makepuree', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('tomato', 1)
    Player.Functions.AddItem('tomato-puree', 1)
end)

RegisterNetEvent('qb-luchettijob:server:chopcheese', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('cheese-wheel', 1)
    Player.Functions.AddItem('cheese', Config.CheeseWheelAmount)
end)

RegisterNetEvent('qb-luchettijob:server:makebsteak', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('beaf-patty', 1)
    Player.Functions.AddItem('beef-steak', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makevsteak', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('veal-patty', 1)
    Player.Functions.AddItem('veal-steak', 1)
end)

RegisterNetEvent('qb-luchettijob:server:makemeatball', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    Player.Functions.RemoveItem('uncooked-meatballs', 1)
    Player.Functions.AddItem('meatballs', Config.MeatballAmount)
end)