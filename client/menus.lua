local QBCore = exports['qb-core']:GetCoreObject()

isLoggedIn = false
PlayerJob = {}

local onDuty = false

Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("LuchettiDuty", vector3(292.05, -980.14, 29.52), 1.0, 1.2, {
		name = "LuchettiDuty",
		heading = 1.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.5,
		maxZ=30.5,
	}, {
		options = {{event = "qb-luchettijob:DutyB",icon = "far fa-clipboard",label = Locale[Config.Lang].menu['clock'],job = "luchetti",},},
		distance = 1.5
	})
	exports['qb-target']:AddBoxZone("LuchettiTable1", vector3(291.77, -971.32, 29.42), 1.0, 1.0, {
		name = "LuchettiTable1",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table1",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 1",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable2", vector3(289.45, -971.38, 29.42), 1.0, 1.0, {
		name = "LuchettiTable2",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table2",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 2",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable3", vector3(287.05, -971.45, 29.42), 1.0, 1.0, {
		name = "LuchettiTable3",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table3",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 3",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable4", vector3(284.97, -969.35, 29.42), 1.0, 1.0, {
		name = "LuchettiTable4",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table4",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 4",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable5", vector3(287.12, -968.55, 29.42), 1.0, 1.0, {
		name = "LuchettiTable5",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table5",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 5",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable6", vector3(289.51, -968.56, 29.42), 1.0, 1.0, {
		name = "LuchettiTable6",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table6",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 6",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable7", vector3(291.81, -968.47, 29.42), 1.0, 1.0, {
		name = "LuchettiTable7",
		heading = 100.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.0,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table7",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 7",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable8", vector3(295.56, -966.48, 28.97), 1.00, 1.7, {
		name = "LuchettiTable8",
		heading = 359.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.2,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table8",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 8",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 2.5
	})
    exports['qb-target']:AddBoxZone("LuchettiTable9", vector3(295.51, -969.91, 28.98), 1.00, 1.7, {
		name = "LuchettiTable9",
		heading = 359.0,
		debugPoly = Config.DebugLuchettiPoly,
		minZ=29.2,
		maxZ=29.5,
	}, {
		options = {
		    {event = "qb-luchettijob:Table9",icon = "fas fa-menorah",label = Locale[Config.Lang].menu['table'].." 9",},
            {event = "qb-menu:ViewLuchettiMenu",icon = "fas fa-book",label = Locale[Config.Lang].menu['viewmenu'],},
		},
		distance = 2.5
	})
	exports['qb-target']:AddBoxZone("luchettidrinkmenu", vector3(289.96, -979.29, 29.53), 1.0, 1.0, {
		name="luchettidrinkmenu",
		heading=179,
		debugPoly=Config.DebugLuchettiPoly,
		minZ=28.0,
		maxZ=29.8,
	}, {
		options = {{event = "qb-menu:LuchettiDrinkMenu",icon = "fas fa-cocktail",label = Locale[Config.Lang].menu['drinkm'],job = "luchetti",},},
		distance = 1.5
	})
    exports['qb-target']:AddBoxZone("luchettistorageshelf", vector3(282.6, -978.05, 30.24), 2.0, 0.8, {
        name="luchettistorageshelf",
        heading=178,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.0,
        maxZ=32.0,
    }, {
        options = {{event = "qb-menu:LuchettiStorage",icon = "fas fa-box",label = Locale[Config.Lang].menu['storage'],job = "luchetti",},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettisafe1", vector3(297.36, -989.51, 29.38), 0.5, 0.5, {
        name="luchettisafe1",
        heading=269,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.3,
        maxZ=30.0,
    }, {
        options = {{event = "qb-luchettijob:OfficeSafe",icon = "fas fa-lock",label = Locale[Config.Lang].menu['safe'],job = "luchetti",grade = 3},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettisafe2", vector3(325.52, -985.4, 23.77), 1.0, 1.0, {
        name="luchettisafe2",
        heading=269,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=23.3,
        maxZ=25.5,
    }, {
        options = {{event = "qb-luchettijob:DownstairsSafe",icon = "fas fa-lock",label = Locale[Config.Lang].menu['safe'],job = "luchetti",grade = 3},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettiwinefridge", vector3(294.67, -975.77, 29.43), 1.5, 1.5, {
        name="luchettiwinefridge",
        heading=269,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=28.0,
        maxZ=30.5,
    }, {
        options = {{event = "qb-luchettijob:WineFridge",icon = "fas fa-wine-bottle",label = Locale[Config.Lang].menu['drinkfridge'],job = "luchetti",},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettimicrowave", vector3(288.57, -986.36, 29.43), 1.3, 0.6, {
        name="luchettimicrowave",
        heading=270,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.4,
        maxZ=30.0,
    }, {
        options = {{event = "qb-menu:LuchettiMicrowave",icon = "fas fa-fire",label = Locale[Config.Lang].menu['microwave'],job = "luchetti",},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettigrill", vector3(289.29, -983.86, 30.41), 1.0, 1.6, {
        name="luchettigrill",
        heading=268,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.0,
        maxZ=30.0,
    }, {
        options = {{event = "qb-menu:LuchettiGrill",icon = "fas fa-fire",label = Locale[Config.Lang].menu['grill'],job = "luchetti",},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettifryer", vector3(286.01, -980.43, 29.32), 1.0, 1.5, {
            name="luchettifryer",
            heading=0,
            debugPoly=Config.DebugLuchettiPoly,
            minZ=29.0,
            maxZ=30.0,
        }, {
        options = {{event = "qb-menu:LuchettiFryer",icon = "fas fa-fire",label = Locale[Config.Lang].menu['fryer'],job = "luchetti",},},
        distance = 1.5
    })
    exports['qb-target']:AddBoxZone("luchettichopping", vector3(284.39, -983.6, 29.33), 0.7, 1.5, {
            name="luchettichopping",
            heading=270,
            debugPoly=Config.DebugLuchettiPoly,
            minZ=28.0,
            maxZ=29.5,
        }, {
        options = {{event = "qb-menu:LuchettiChopping",icon = "fas fa-knife",label = Locale[Config.Lang].menu['preps'],job = "luchetti",},},
        distance = 1.5
    })            
    exports['qb-target']:AddBoxZone("luchettipizzaoven", vector3(288.16, -981.42, 29.43), 1.0, 1.7, {
        name="luchettipizzaoven",
        heading=356,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.0,
        maxZ=30.5,
    }, {
        options = {{event = "qb-menu:LuchettiPizzaOven",icon = "fas fa-fire",label = Locale[Config.Lang].menu['pizzaoven'],job = "luchetti",},},
        distance = 1.5
    })       
    exports['qb-target']:AddBoxZone("luchettimanagerpc", vector3(288.05, -990.23, 29.07), 0.5, 1.2, {
        name="luchettimanagerpc",
        heading=90,
        debugPoly=Config.DebugLuchettiPoly,
        minZ=29.2,
        maxZ=29.9,
    }, {
            options = {{event = "qb-menu:LuchettiManagerPC",icon = "fas fa-laptop",label = Locale[Config.Lang].menu['managerpc'],job = "luchetti",},},
            distance = 1.5
        })    
    exports['qb-target']:AddBoxZone("LuchettiRegister", vector3(287.35, -977.23, 29.32), 0.5, 0.4, {
        name="LuchettiRegister",
        debugPoly=Config.DebugLuchettiPoly,
        heading=357,
        minZ=29.2,
        maxZ=29.8,
    }, {
            options = {{event = "qb-luchettijob:bill",parms = "1",icon = "fas fa-credit-card",label = Locale[Config.Lang].menu['invoice'],job = "luchetti",},},
            distance = 1.5
        })
    exports['qb-target']:AddBoxZone("LuchettiRegister2", vector3(290.77, -977.26, 29.32), 0.5, 0.4, {
        name="LuchettiRegister2",
        debugPoly=Config.DebugLuchettiPoly,
        heading=357,
        minZ=29.2,
        maxZ=29.8,
    }, {
            options = {{event = "qb-luchettijob:bill",parms = "1",icon = "fas fa-credit-card",label = Locale[Config.Lang].menu['invoice'],job = "luchetti",},},
            distance = 1.5
        })
    exports['qb-target']:AddBoxZone("luchettidessertfridge", vector3(282.08, -986.0, 29.39), 1.0, 1.5, {
        name="luchettidessertfridge",
        debugPoly=Config.DebugLuchettiPoly,
        heading=90,
        minZ=28.5,
        maxZ=31.0,
    }, {
            options = {{event = "qb-menu:LuchettiDessertFridge",icon = "fas fa-cake",label = Locale[Config.Lang].menu['desserts'],job = "luchetti",},},
            distance = 2.5
        })
end)


-- QB-MENU --

RegisterNetEvent('qb-menu:ViewLuchettiMenu', function(data)
    exports['qb-menu']:openMenu({
        {header = "| "..Locale[Config.Lang].menu['luchettimenu'].." |",isMenuHeader = true, },
        {header = Locale[Config.Lang].menu['starters'],txt = "",params = {event = "qb-menu:ViewLuchettiStarters"}},
        {header = Locale[Config.Lang].menu['mains'],txt = "",params = {event = "qb-menu:ViewLuchettiMains"}},  
        {header = Locale[Config.Lang].menu['pizzas'],txt = "",params = {event = "qb-menu:ViewLuchettiPizzas"}}, 
        {header = Locale[Config.Lang].menu['desserts'],txt = "",params = {event = "qb-menu:ViewLuchettiDesserts"}},
        {header = Locale[Config.Lang].menu['drinks'],txt = "",params = {event = "qb-menu:ViewLuchettiDrinks"}},
        {id = 7,header = "Close (ESC)",isMenuHeader = true,},
    })
end)

RegisterNetEvent('qb-menu:ViewLuchettiStarters', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['starters'],isMenuHeader = true, },
        {header = "• BreadSticks",txt = "Bread & Tomato Puree",isMenuHeader = true,},
        {header = "• Mozzarella In Carrozza",txt = "Cheese, Tomato Puree",isMenuHeader = true,},
        {header = "• Polpette Della Nonna",txt = "Meatballs, Tomato Puree",isMenuHeader = true,},  
        {header = "• Garlic Bread",txt = "Bread, garlic, Tomato Puree",isMenuHeader = true,},
        {header = "• Prawn Cocktail",txt = "prawns, sauce, salad",isMenuHeader = true,},
        {id = 7,header = "Back",params = {event = "qb-menu:ViewLuchettiMenu"}},
    })
end)

RegisterNetEvent('qb-menu:ViewLuchettiMains', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['mains'],isMenuHeader = true, },
        {header = "• Ravioli",txt = "Bread & Tomato Puree",isMenuHeader = true,},
        {header = "• Fiorentina",txt = "Cheese, Tomato Puree",isMenuHeader = true,},
        {header = "• Veal Milanese",txt = "Meatballs, Tomato Puree",isMenuHeader = true,},  
        {header = "• Spaghetti Carbonara",txt = "Bread, garlic, Tomato Puree",isMenuHeader = true,},
        {id = 7,header = "Back",params = {event = "qb-menu:ViewLuchettiMenu"}},
    })
end)

RegisterNetEvent('qb-menu:ViewLuchettiPizzas', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['pizzas'],isMenuHeader = true, },
        {header = "• Margherita",txt = "Classic cheesy Pizza",isMenuHeader = true,},
        {header = "• Pepperoni",txt = "Cheese, Tomato Puree and Pepperoni",isMenuHeader = true,},
        {header = "• Hawaiian",txt = "Love it or Hate it? Its Tasty to me",isMenuHeader = true,},  
        {header = "• Vegetable",txt = "Vegetarian Pizza",isMenuHeader = true,},
        {id = 7,header = "Back",params = {event = "qb-menu:ViewLuchettiMenu"}},
    })
end)

RegisterNetEvent('qb-menu:ViewLuchettiDesserts', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['desserts'],isMenuHeader = true, },
        {header = "• Gelato",txt = "Luchetti Special Gelato",isMenuHeader = true,},
        {header = "• Fudge Cake",txt = "Topped With Chocolate Sauce",isMenuHeader = true,},
        {header = "• Tiramisu",txt = "A Staple of italian Cuisine",isMenuHeader = true,},  
        {header = "• CheeseCake",txt = "Our Special Chocolate Cheesecake",isMenuHeader = true,},
        {header = "• Panna Cotta",txt = "Topped With Strawberries",isMenuHeader = true,},
        {id = 7,header = "Back",params = {event = "qb-menu:ViewLuchettiMenu"}},
    })
end)

RegisterNetEvent('qb-menu:ViewLuchettiDrinks', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['drinks'],isMenuHeader = true, },
        {header = "• Aperitivo",txt = "Make a lovely glass of Aperitivo",isMenuHeader = true,},
        {header = "• Negroni",txt = "An italian classic",isMenuHeader = true,},  
        {header = "• Campari",txt = "Luxurious taste and texture",isMenuHeader = true,},
        {header = "• Americano",txt = "good old USA",isMenuHeader = true,},
        {header = "• Bellini",txt = "Enjoyed by all",isMenuHeader = true,},
        {header = "• Spritz",txt = "Something fresh",isMenuHeader = true,},
        {id = 7,header = "Back",params = {event = "qb-menu:ViewLuchettiMenu"}},
    })
end)


RegisterNetEvent('qb-menu:LuchettiDrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['drinks'],isMenuHeader = true, },
        {header = "• Aperitivo",txt = "Make a lovely glass of Aperitivo",params = {event = "qb-luchettijob:Aperitivo"}},
        {header = "• Negroni",txt = "An italian classic",params = {event = "qb-luchettijob:Negroni"}},  
        {header = "• Campari",txt = "Luxurious taste and texture",params = {event = "qb-luchettijob:Campari"}},
        {header = "• Americano",txt = "good old USA",params = {event = "qb-luchettijob:Americano"}},
        {header = "• Bellini",txt = "Enjoyed by all",params = {event = "qb-luchettijob:Bellini"}},
        {header = "• Spritz",txt = "Something fresh",params = {event = "qb-luchettijob:Spritz"}},
        {id = 7,header = "Close (ESC)",isMenuHeader = true,},
    })
end)

RegisterNetEvent('qb-menu:LuchettiDessertFridge', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['desserts'],isMenuHeader = true, },
        {header = "• Gelato",txt = "",params = {event = "qb-luchettijob:Gelato"}},
        {header = "• Fudge Cake",txt = "",params = {event = "qb-luchettijob:FudgeCake"}},  
        {header = "• Tiramisu",txt = "",params = {event = "qb-luchettijob:Tiramisu"}},
        {header = "• Cheesecake",txt = "",params = {event = "qb-luchettijob:Cheesecake"}},
        {header = "• Panna Cotta",txt = "",params = {event = "qb-luchettijob:PannaCotta"}},
        {id = 7,header = "Close (ESC)",isMenuHeader = true,},
    })
end)

RegisterNetEvent('qb-menu:LuchettiStorage', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['storage'],isMenuHeader = true, },
        {header = Locale[Config.Lang].menu['shelf'].." 1",txt = Locale[Config.Lang].menu['accessshelf'],params = {event = "qb-luchettijob:Shelf1"}},
        {header = Locale[Config.Lang].menu['shelf'].." 2",txt = Locale[Config.Lang].menu['accessshelf'],params = {event = "qb-luchettijob:Shelf2"}},
        {header = Locale[Config.Lang].menu['shelf'].." 3",txt = Locale[Config.Lang].menu['accessshelf'],params = {event = "qb-luchettijob:Shelf3"}},  
        {header = Locale[Config.Lang].menu['shelf'].." 4",txt = Locale[Config.Lang].menu['accessshelf'],params = {event = "qb-luchettijob:Shelf4"}},
        {header = Locale[Config.Lang].menu['shelf'].." 5",txt = Locale[Config.Lang].menu['accessshelf'],params = {event = "qb-luchettijob:Shelf5"}},
        {id = 7,header = "Close (ESC)",isMenuHeader = true, },
    })
end)


RegisterNetEvent('qb-menu:LuchettiMicrowave', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['microwave'],isMenuHeader = true, },
        {header = Locale[Config.Lang].menu['starters'],txt = "",params = {event = "qb-menu:StartersMenu"}},
        {header = Locale[Config.Lang].menu['mains'],txt = "",params = {event = "qb-menu:MainsMenu"}},  
        {id = 7,header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:MainsMenu', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['mains'],isMenuHeader = true, },
        {header = "• Fiorentina",txt = "Beef Steak, Fries, Salad, Tomato",params = {event = "qb-luchettijob:MakeFiorentina"}},
        {header = "• Veal Milanese",txt = "Veal, Pasta, Salad, Tomato ",params = {event = "qb-luchettijob:MakeVealMilanese"}},  
        {header = "• Ravioli",txt = "Pasta, Tomato Puree ",params = {event = "qb-luchettijob:MakeRavioli"}},  
        {header = "• Spaghetti Carbonara",txt = "Pasta, Cream Sauce ",params = {event = "qb-luchettijob:MakeCarbonara"}},  
        {id = 7,header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:LuchettiPizzaOven', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['pizzas'],isMenuHeader = true, },
        {header = "• Margherita Pizza",txt = "Dough, Puree, Cheese",params = {event = "qb-luchettijob:MakeMargherita"}},
        {header = "• Pepperoni",txt = "Dough, Cheese, Pepperoni",params = {event = "qb-luchettijob:MakePepperoni"}},
        {header = "• Hawaiian",txt = "Dough, Cheese, Pineapple, Tomato Puree ",params = {event = "qb-luchettijob:MakeHawaiian"}},  
        {header = "• Vegetable",txt = "dough, salad,tomato slice, Tomato Puree ",params = {event = "qb-luchettijob:MakeVegetablePizza"}},   
        {id = 7,header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:StartersMenu', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['starters'],isMenuHeader = true, },
        {header = "• BreadSticks",txt = "Bread & Tomato Puree",params = {event = "qb-luchettijob:MakeBreadstick"}},
        {header = "• Mozzarella In Carrozza",txt = "Cheese, Tomato Puree",params = {event = "qb-luchettijob:MakeMozzarellaCarrozza"}},
        {header = "• Polpette Della Nonna",txt = "Meatballs, Tomato Puree",params = {event = "qb-luchettijob:MakePolpette"}},  
        {header = "• Garlic Bread",txt = "Bread, garlic, Tomato Puree",params = {event = "qb-luchettijob:MakeGarlicBread"}},
        {header = "• Prawn Cocktail",txt = "prawns, sauce, salad",params = {event = "qb-luchettijob:MakePrawnCocktail"}},
        {id = 7,header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:LuchettiGrill', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['grill'],isMenuHeader = true, },
        {header = "• Beef Steak",txt = "Grill some beef steaks!",params = {event = "qb-luchettijob:MakeBeefSteak"}},
        {header = "• Veal Steak",txt = "Grill a Veal Steak",params = {event = "qb-luchettijob:MakeVealSteak"}},
        {header = "• MeatBalls",txt = "Grill some meatballs",params = {event = "qb-luchettijob:MakeMeatballs"}},
        {header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:LuchettiFryer', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['fryer'],isMenuHeader = true, },
        {header = "• Make Fries",txt = "Throw in some fries",params = {event = "qb-luchettijob:MakeFries"}},
        {header = "• Chips",txt = "Make Some Chips ",params = {event = "qb-luchettijob:MakeChips"}},
        {header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:LuchettiChopping', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['preps'],isMenuHeader = true, },
        {header = "• Prep Potatoes",txt = "Prep Some Potatoes",params = {event = "qb-menu:PrepPotatoes"}},
        {header = "• Prep Tomatoes",txt = "Prep Some Potatoes ",params = {event = "qb-menu:PrepTomatoes"}},
        {header = "• Chop Cheese",txt = "Chop Wheel into 10 Chunks",params = {event = "qb-luchettijob:ChopCheese"}},
        {header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:PrepPotatoes', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['potato'],isMenuHeader = true, },
        {header = "• Chop Potatoes",txt = "Prep for Fries",params = {event = "qb-luchettijob:PrepFries"}},
        {header = "• Mash Potatoes",txt = "Make Mashed Potatoes ",params = {event = "qb-luchettijob:MakeMashedPotato"}},
        {header = "Close (ESC)",isMenuHeader = true, },
    })
end)

RegisterNetEvent('qb-menu:PrepTomatoes', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['tomato'],isMenuHeader = true,},
        {header = "• Chop Tomato",txt = "Chop some Tomatoes",params = {event = "qb-luchettijob:ChopTomato"}},
        {header = "• Tomato Puree",txt = "Make Tomato Puree ",params = {event = "qb-luchettijob:MakeTomatoPuree"}},
        {header = "Close (ESC)",isMenuHeader = true,},
    })
end)

RegisterNetEvent('qb-menu:LuchettiManagerPC', function(data)
    exports['qb-menu']:openMenu({
        {header = Locale[Config.Lang].menu['managerpc'],isMenuHeader = true, },
        {header = Locale[Config.Lang].menu['orderstock'],txt = Locale[Config.Lang].menu['placeorder'],params = {event = "qb-luchettijob:shop"}},
        {header = Locale[Config.Lang].menu['cashreceipt'],txt = "",params = {event = "qb-luchettijob:deliveries:CashReceipt"}},
        {header = Locale[Config.Lang].menu['manage'],txt = "",params = {event = "qb-bossmenu:client:OpenMenu"}},
        {header = "Close (ESC)",isMenuHeader = true, },
    })
end)

-- Till Stuff --
RegisterNetEvent("qb-luchettijob:bill")
AddEventHandler("qb-luchettijob:bill", function()
    local bill = exports['qb-input']:ShowInput({
        header = Locale[Config.Lang].menu['createreceipt'],
		submitText = Locale[Config.Lang].menu['bill'],
        inputs = {
            {text = "Server ID(#)",name = "citizenid", type = "text", isRequired = true },
            {text = "Bill Price ($)", name = "billprice",type = "number", isRequired = false }
        }
    })
    if bill ~= nil then
        if bill.citizenid == nil or bill.billprice == nil then 
            return 
        end
        TriggerServerEvent("qb-luchettijob:bill:player", bill.citizenid, bill.billprice)
    end
end)