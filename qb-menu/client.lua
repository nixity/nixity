local server = false

RegisterNUICallback("dataPost", function(data, cb)
    SetNuiFocus(false)
    if server then
        TriggerServerEvent(data.event, data.args)
    else
        TriggerEvent(data.event, data.args)
    end
    cb('ok')
end)

RegisterNUICallback("cancel", function()
    SetNuiFocus(false)
end)


RegisterNetEvent('qb-menu:sendMenu', function(data, toServer)
    if not data then return end
    if toServer then server = true end    
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "OPEN_MENU",
        data = data
    })
end)
RegisterCommand("test", function(source, args, raw)
    TriggerEvent("qb-menu:testMenu")
end)

RegisterNetEvent('qb-menu:testMenu', function()
    TriggerEvent('qb-menu:sendMenu', {
        {
            id = 1,
            header = "Main Title",
            txt = ""
        },
        {
            id = 2,
            header = "Sub Menu Button",
            txt = "This goes to a sub menu",
            params = {
                event = "qb-menu:testMenu2",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)

RegisterNetEvent('qb-menu:testMenu2', function(data)
    local id = data.id
    local number = data.number
    TriggerEvent('qb-menu:sendMenu', {
        {
            id = 1,
            header = "< Go Back",
            txt = "",
            params = {
                event = "qb-menu:testMenu"
            }
        },
        {
            id = 2,
            header = "Number: "..number,
            txt = "ID: "..id
        },
    })
end)