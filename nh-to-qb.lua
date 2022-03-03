-- qb-menu --                                             -- nh-context --

RegisterNetEvent('qb-menu:TequilalaMenu', function(data)  -- RegisterNetEvent('nh-context:tequilalaMenu', function(data)
    exports['qb-menu']:openMenu({                         --     TriggerEvent('nh-context:sendMenu', {
        {                                                 --         {
            header = "| Fridge |",                        --             id = 0,
            isMenuHeader = true                           --             header = "| Fridge |",
        },                                                --             txt = "",
        {                                                 --         },
            header = "• Order Items",                     --         {
            txt = "Buy items from the shop!",             --             id = 1,
            params = {                                    --             header = "• Order Items",
                event = "qb-tequilalajob:shop"            --             txt = "Buy items from the shop!",
            }                                             --             params = {
        },                                                --                 event = "qb-tequilalajob:shop"
        {                                                 --             }
                                                          --         },
            header = "• Open Fridge",                     --         {
            txt = "See what you have in storage",         --             id = 2,
            params = {                                    --             header = "• Open Fridge",
                event = "qb-tequilalajob:Storage2"        --             txt = "See what you have in storage",
            }                                             --             params = {
        },                                                --                 event = "qb-tequilalajob:Storage2"
 
    })                                                     --             }
end)                                                       --         },
                                                           --         {
local function closeMenuFull()                             --             id = 3,
    exports['qb-menu']:closeMenu()                         --             header = "Close (ESC)",
end                                                        --             txt = "",
                                                           --         },
                                                           --     })
                                                           -- end).