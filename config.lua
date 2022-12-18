Config = {}

Config = {
    DebugLuchettiPoly = false,
    ShopStyle = 'jim', --qb, jim
    LuchettiGaragePedLocation = vector4(299.19, -995.03, 29.28, 166.02),
    LuchettiGaragePed = 's_m_m_movprem_01',
    SpawnCarLocation = vector4(297.87, -997.95, 29.18, 281.11),
    LuchettiVehicleModel = 'faggio',

    PizzaRunWait = 10000,
    PizzaRunPayment = math.random(25, 60),   --Bank Payment
    PizzaJobs = math.random(1,8),

----///////////ITEM AMOUNTS///////////---------------
    GlassBoxAmount = 10, --amount of drinks glass to get from opening 1 box
    TomatoBoxAmount = 20, --amount of tomatoes to get from 1 box
    MeatTrayAmount = 5, --amount of each meat to get when opening 1 box
    SaladBoxAmount = 5, --amount of salad to get from 1 box
    PotatoSackAmount = 20, --amount of products to get from potato sack
    PotatoChipsAmount = 10, --amount of potato chips to get when cooking
    TomSliceAmount = 5, --amount of slices to get from 1 tomato
    CheeseWheelAmount = 6, --amount of cheese pieces from 1 cheese wheel
    MeatballAmount = 4, --amount of meatballs to get from cooking 1

    PizzaDeliverySpots = {
        vector3(-297.74, 379.84, 112.1),
        vector3(119.37, 564.19, 183.96),
        vector3(808.72, -163.69, 75.88),
        vector3(1060.41, -378.3, 68.23),
        vector3(850.27, -532.63, 57.93),
        vector3(281.96, -1694.96, 29.65),
        vector3(39.02, -1911.58, 21.95),
        vector3(256.43, -2023.4, 19.27),
        vector3(512.51, -1790.77, 28.92),
        vector3(1193.52, -1622.37, 45.22),
    },
    Items = {    --edit prices in this list to your economy
        label = "luchetti",
        slots = 12,
        items = {
            [1] = {
                name = "cheese-wheel",
                price = 10,
                amount = 50,
                info = {},
                type = "item",
                slot = 1,
            },
            [2] = {
                name = "salad-box",
                price = 15,
                amount = 50,
                info = {},
                type = "item",
                slot = 2,
            },
            [3] = {
                name = "dough",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 3,
            },
            [4] = {
                name = "meat-tray",
                price = 40,
                amount = 50,
                info = {},
                type = "item",
                slot = 4,
            },
            [5] = {
                name = "pasta",
                price = 5,
                amount = 50,
                info = {},
                type = "item",
                slot = 5,
            },
            [6] = {
                name = "glass-box",
                price = 10,
                amount = 50,
                info = {},
                type = "item",
                slot = 6,
            },
            [7] = {
                name = "pcocktail-sauce",
                price = 2,
                amount = 50,
                info = {},
                type = "item",
                slot = 7,
            },
            [8] = {
                name = "tomato-box",
                price = 15,
                amount = 50,
                info = {},
                type = "item",
                slot = 8,
            },
            [9] = {
                name = "potato-sack",
                price = 15,
                amount = 50,
                info = {},
                type = "item",
                slot = 9,
            },
            [10] = {
                name = "cream-sauce",
                price = 2,
                amount = 50,
                info = {},
                type = "item",
                slot = 10,
            },
            [11] = {
                name = "pineapple",
                price = 2,
                amount = 50,
                info = {},
                type = "item",
                slot = 11,
            },
            [12] = {
                name = "pepperoni",
                price = 2,
                amount = 50,
                info = {},
                type = "item",
                slot = 12,
            },
        }
    }
}
