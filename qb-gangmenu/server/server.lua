XD = nil
Accounts = {}
TriggerEvent('XD:GetObject', function(obj) XD = obj end)

CreateThread(function()
    Wait(500)
    local result = json.decode(LoadResourceFile(GetCurrentResourceName(), "./database.json"))

    if not result then
        return
    end

    for k,v in pairs(result) do
        local k = tostring(k)
        local v = tonumber(v)

        if k and v then
            Accounts[k] = v
        end
    end
end)

function loadt()
    while true do
    
       Citizen.Wait(10)
       if count == "true" then
           ---------------cal function
           dude = true
       else
       end
    end
end

RegisterServerEvent("cash_gangmenu:server:withdrawMoney")
AddEventHandler("cash_gangmenu:server:withdrawMoney", function(amount)
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local gang = xPlayer.PlayerData.gang.name

    if not Accounts[gang] then
        Accounts[gang] = 0
    end

    if Accounts[gang] >= amount then
        Accounts[gang] = Accounts[gang] - amount
        xPlayer.Functions.AddMoney("cash", amount)
    else
        TriggerClientEvent('XD:Notify', src, "Invaild Amount :/", "error")
        return
    end

    TriggerClientEvent('cash_gangmenu:client:refreshSociety', -1, gang, Accounts[gang])
    SaveResourceFile(GetCurrentResourceName(), "./database.json", json.encode(Accounts), -1)
    TriggerEvent('cash_logs:server:createLog', 'bossmenu', 'Withdraw Money', "Successfully withdrawn $" .. amount .. ' (' .. gang .. ')', src)
end)

RegisterServerEvent("cash_gangmenu:server:depositMoney")
AddEventHandler("cash_gangmenu:server:depositMoney", function(amount)
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local gang = xPlayer.PlayerData.gang.name

    if not Accounts[gang] then
        Accounts[gang] = 0
    end

    if xPlayer.Functions.RemoveMoney("cash", amount) then
        Accounts[gang] = Accounts[gang] + amount
    else
        TriggerClientEvent('XD:Notify', src, "Invaild Amount :/", "error")
        return
    end

    TriggerClientEvent('cash_gangmenu:client:refreshSociety', -1, gang, Accounts[gang])
    SaveResourceFile(GetCurrentResourceName(), "./database.json", json.encode(Accounts), -1)
    TriggerEvent('cash_logs:server:createLog', 'bossmenu', 'Deposit Money', "Successfully deposited $" .. amount .. ' (' .. gang .. ')', src)
end)

RegisterServerEvent("cash_gangmenu:server:addAccountMoney")
AddEventHandler("cash_gangmenu:server:addAccountMoney", function(account, amount)
    if not Accounts[account] then
        Accounts[account] = 0
    end
    
    Accounts[account] = Accounts[account] + amount
    TriggerClientEvent('cash_gangmenu:client:refreshSociety', -1, account, Accounts[account])
    SaveResourceFile(GetCurrentResourceName(), "./database.json", json.encode(Accounts), -1)
end)

RegisterServerEvent("cash_gangmenu:server:removeAccountMoney")
AddEventHandler("cash_gangmenu:server:removeAccountMoney", function(account, amount)
    if not Accounts[account] then
        Accounts[account] = 0
    end

    if Accounts[account] >= amount then
        Accounts[account] = Accounts[account] - amount
    end

    TriggerClientEvent('cash_gangmenu:client:refreshSociety', -1, account, Accounts[account])
    SaveResourceFile(GetCurrentResourceName(), "./database.json", json.encode(Accounts), -1)
end)

RegisterServerEvent("cash_gangmenu:server:openMenu")
AddEventHandler("cash_gangmenu:server:openMenu", function()
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local gang = xPlayer.PlayerData.gang
    local employees = {}
    print("GANG MENU - Copyrigth FivemScipt - CoderC-SLo enter and find out in our discord:  https://discord.gg/RMybeEU ")
    if gang.isboss == true then
        if not Accounts[gang.name] then
            Accounts[gang.name] = 0
        end

        XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `gang` LIKE '%".. gang.name .."%'", function(players)
            if players[1] ~= nil then
                for key, value in pairs(players) do
                    local isOnline = XD.Functions.GetPlayerByCitizenId(value.citizenid)

                    if isOnline then
                        table.insert(employees, {
                            source = isOnline.PlayerData.citizenid, 
                            grade = isOnline.PlayerData.gang.grade,
                            isboss = isOnline.PlayerData.gang.isboss,
                            name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                        })
                    else
                        table.insert(employees, {
                            source = value.citizenid, 
                            grade =  json.decode(value.gang).grade,
                            isboss = json.decode(value.gang).isboss,
                            name = json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
                        })
                    end
                end
            end

            TriggerClientEvent('cash_gangmenu:client:openMenu', src, employees, XD.Shared.Gangs[gang.name])
            TriggerClientEvent('cash_gangmenu:client:refreshSociety', -1, gang.name, Accounts[gang.name])
        end)
    else
        TriggerClientEvent('XD:Notify', src, "You are not the boss, how did you reach here bitch?!", "error")
    end
end)


RegisterServerEvent('cash_gangmenu:server:fireEmployee')
AddEventHandler('cash_gangmenu:server:fireEmployee', function(data)
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local xEmployee = XD.Functions.GetPlayerByCitizenId(data.source)

    if xEmployee then
        if xEmployee.Functions.SetGang("unemployed", '0') then
            TriggerEvent('cash_logs:server:createLog', 'bossmenu', 'Job Fire', "Successfully fired " .. GetPlayerName(xEmployee.PlayerData.source) .. ' (' .. xPlayer.PlayerData.gang.name .. ')', src)

            TriggerClientEvent('XD:Notify', src, "Fired successfully!", "success")
            TriggerClientEvent('XD:Notify', xEmployee.PlayerData.source , "You got fired.", "success")

            Wait(500)
            local employees = {}
            XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `gang` LIKE '%".. xPlayer.PlayerData.gang.name .."%'", function(players)
                if players[1] ~= nil then
                    for key, value in pairs(players) do
                        local isOnline = XD.Functions.GetPlayerByCitizenId(value.citizenid)
                    
                        if isOnline then
                            table.insert(employees, {
                                source = isOnline.PlayerData.citizenid, 
                                grade = isOnline.PlayerData.gang.grade,
                                isboss = isOnline.PlayerData.gang.isboss,
                                name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                            })
                        else
                            table.insert(employees, {
                                source = value.citizenid, 
                                grade =  json.decode(value.gang).grade,
                                isboss = json.decode(value.gang).isboss,
                                name = json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
                            })
                        end
                    end
                    TriggerClientEvent('cash_gangmenu:client:refreshPage', src, 'employee', employees)
                end
            end)
        else
            TriggerClientEvent('XD:Notify', src, "Error.", "error")
        end
    else
        --exports.ghmattimysql:execute("SELECT * FROM `players` WHERE `citizenid` = '" .. data.source .. "' LIMIT 1", function(player)
        XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '" .. data.source .. "' LIMIT 1", function(player)
            if player[1] ~= nil then
                xEmployee = player[1]

                local gang = {}
	            gang.name = "nogang"
	            gang.label = "Civilian"
	            gang.payment = 0
	            gang.onduty = false
	            gang.isboss = false
	            gang.grade = {}
	            gang.grade.name = nil
                gang.grade.level = 0

                XD.Functions.ExecuteSql(false, "UPDATE `players` SET `gang` = '"..json.encode(gang).."' WHERE `citizenid` = '".. data.source .."'")
                TriggerClientEvent('XD:Notify', src, "Fired successfully!", "success")
                TriggerEvent('cash_logs:server:createLog', 'bossmenu', 'Fire', "Successfully fired " .. data.source .. ' (' .. xPlayer.PlayerData.gang.name .. ')', src)
                
                Wait(500)
                local employees = {}
                XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `gang` LIKE '%".. xPlayer.PlayerData.gang.name .."%'", function(players)
                    if players[1] ~= nil then
                        for key, value in pairs(players) do
                            local isOnline = XD.Functions.GetPlayerByCitizenId(value.citizenid)
                        
                            if isOnline then
                                table.insert(employees, {
                                    source = isOnline.PlayerData.citizenid, 
                                    grade = isOnline.PlayerData.gang.grade,
                                    isboss = isOnline.PlayerData.gang.isboss,
                                    name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                                })
                            else
                                table.insert(employees, {
                                    source = value.citizenid, 
                                    grade =  json.decode(value.gang).grade,
                                    isboss = json.decode(value.gang).isboss,
                                    name = json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
                                })
                            end
                        end

                        TriggerClientEvent('cash_gangmenu:client:refreshPage', src, 'employee', employees)
                    end
                end)
            else
                TriggerClientEvent('XD:Notify', src, "Error. Could not find player.", "error")
            end
        end)
    end
end)

RegisterServerEvent('cash_gangmenu:server:giveJob')
AddEventHandler('cash_gangmenu:server:giveJob', function(data)
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local xTarget = XD.Functions.GetPlayerByCitizenId(data.source)

    if xPlayer.PlayerData.gang.isboss == true then
        if xTarget and xTarget.Functions.SetGang(xPlayer.PlayerData.gang.name) then
            --XD.Functions.ExecuteSql(false, "UPDATE `players` SET `gang` WHERE `citizenid` = '".. xTarget.PlayerData.citizenid ..)"'
            TriggerClientEvent('XD:Notify', src, "You recruited " .. (xTarget.PlayerData.charinfo.firstname .. ' ' .. xTarget.PlayerData.charinfo.lastname) .. " to " .. xPlayer.PlayerData.gang.label .. ".", "success")
            TriggerClientEvent('XD:Notify', xTarget.PlayerData.source , "You've been recruited to " .. xPlayer.PlayerData.gang.label .. ".", "success")
            TriggerEvent('cash_logs:server:createLog', 'bossmenu', 'Recruit', "Successfully recruited " .. (xTarget.PlayerData.charinfo.firstname .. ' ' .. xTarget.PlayerData.charinfo.lastname) .. ' (' .. xPlayer.PlayerData.gang.name .. ')', src)
            
        end
    else
        TriggerClientEvent('XD:Notify', src, "You are not the boss, how did you reach here bitch?!", "error")
    end
end)

RegisterServerEvent('cash_gangmenu:server:updateGrade')
AddEventHandler('cash_gangmenu:server:updateGrade', function(data)
    local src = source
    local xPlayer = XD.Functions.GetPlayer(src)
    local xEmployee = XD.Functions.GetPlayerByCitizenId(data.source)

    if xEmployee then
        if xEmployee.Functions.SetGang(xPlayer.PlayerData.gang.name, data.grade) then
            TriggerClientEvent('XD:Notify', src, "Promoted successfully!", "success")
            TriggerClientEvent('XD:Notify', xEmployee.PlayerData.source , "You just got promoted [" .. data.grade .."].", "success")

            Wait(500)
            local employees = {}
            XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `gang` LIKE '%".. xPlayer.PlayerData.gang.name .."%'", function(players)
                if players[1] ~= nil then
                    for key, value in pairs(players) do
                        local isOnline = XD.Functions.GetPlayerByCitizenId(value.citizenid)
                    
                        if isOnline then
                            table.insert(employees, {
                                source = isOnline.PlayerData.citizenid, 
                                grade = isOnline.PlayerData.gang.grade,
                                isboss = isOnline.PlayerData.gang.isboss,
                                name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                            })
                        else
                            table.insert(employees, {
                                source = value.citizenid, 
                                grade =  json.decode(value.gang).grade,
                                isboss = json.decode(value.gang).isboss,
                                name = json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
                            })
                        end
                    end

                    TriggerClientEvent('cash_gangmenu:client:refreshPage', src, 'employee', employees)
                end
            end)
        else
            TriggerClientEvent('XD:Notify', src, "Error.", "error")
        end
    else
        XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `citizenid` = '" .. data.source .. "' LIMIT 1", function(player)
            if player[1] ~= nil then
                xEmployee = player[1]
                local gang = XD.Shared.Gangs[xPlayer.PlayerData.gang.name]
                local employeegang = json.decode(xEmployee.gang)
                employeegang.grade = gang.grades[data.grade]
                XD.Functions.ExecuteSql(false, "UPDATE `players` SET `gang` = '"..json.encode(employeegang).."' WHERE `citizenid` = '".. data.source .."'")
                TriggerClientEvent('XD:Notify', src, "Promoted successfully!", "success")
                
                Wait(500)
                local employees = {}
                XD.Functions.ExecuteSql(false, "SELECT * FROM `players` WHERE `gang` LIKE '%".. xPlayer.PlayerData.gang.name .."%'", function(players)
                    if players[1] ~= nil then
                        for key, value in pairs(players) do
                            local isOnline = XD.Functions.GetPlayerByCitizenId(value.citizenid)
                        
                            if isOnline then
                                table.insert(employees, {
                                    source = isOnline.PlayerData.citizenid, 
                                    grade = isOnline.PlayerData.gang.grade,
                                    isboss = isOnline.PlayerData.gang.isboss,
                                    name = isOnline.PlayerData.charinfo.firstname .. ' ' .. isOnline.PlayerData.charinfo.lastname
                                })
                            else
                                table.insert(employees, {
                                    source = value.citizenid, 
                                    grade =  json.decode(value.gang).grade,
                                    isboss = json.decode(value.gang).isboss,
                                    name = json.decode(value.charinfo).firstname .. ' ' .. json.decode(value.charinfo).lastname
                                })
                            end
                        end

                        TriggerClientEvent('cash_gangmenu:client:refreshPage', src, 'employee', employees)
                    end
                end)
            else
                TriggerClientEvent('XD:Notify', src, "Error. Could not find player.", "error")
            end
        end)
    end
end)

RegisterServerEvent('cash_gangmenu:server:updateNearbys')
AddEventHandler('cash_gangmenu:server:updateNearbys', function(data)
    local src = source
    local players = {}
    local xPlayer = XD.Functions.GetPlayer(src)
    for _, player in pairs(data) do
        local xTarget = XD.Functions.GetPlayer(player)
        if xTarget and xTarget.PlayerData.gang.grade.name ~= xPlayer.PlayerData.gang.grade.name then
            table.insert(players, {
                source = xTarget.PlayerData.citizenid,
                name = xTarget.PlayerData.charinfo.firstname .. ' ' .. xTarget.PlayerData.charinfo.lastname
            })
        end
    end

    TriggerClientEvent('cash_gangmenu:client:refreshPage', src, 'recruits', players)
end)

function GetAccount(account)
    return Accounts[account] or 0
end

function tprint (t, s)
    for k, v in pairs(t) do
        local kfmt = '["' .. tostring(k) ..'"]'
        if type(k) ~= 'string' then
            kfmt = '[' .. k .. ']'
        end
        local vfmt = '"'.. tostring(v) ..'"'
        if type(v) == 'table' then
            tprint(v, (s or '')..kfmt)
        else
            if type(v) ~= 'string' then
                vfmt = tostring(v)
            end
            print(type(t)..(s or '')..kfmt..' = '..vfmt)
        end
    end
end 
WRONG PASSWORD!