# qb-menu
Simple, minimalistic event firing context menu

Release of NeroHiro's Context since he does't support it anymore and removed it from his GitHub.

Original: https://forum.cfx.re/t/no-longer-supported-standalone-nerohiro-s-context-menu-dynamic-event-firing-menu/2564083

# Information
I really liked the look of these dark themed context menus but haven't seen alot released, now I'm sure mine isn't the best it's one of my first few public scripts and I feel it's really user friendly, I hope you all find a use for this and enjoy it!

![ShowCase](https://lithi.io/file/LY0d.png)
![ShowCase](https://lithi.io/file/60f7.png)
![ShowCase](https://lithi.io/file/dDnO.png)



# Setup
It's pretty simple, once you drop the qb-menu resource into your resources folder just make sure you put

ensure qb-menu

in your server.cfg. 

# Examples

https://streamable.com/w04k9z

Here is a base menu to show how it works, this is a kinda "figure it out" type of situation but I hope my examples work, the code below is what made the video above!
```
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
```

# Known Bugs
No known bugs

# Support
Feel free to report any issues you have in the GitHub [Issues](https://github.com/ohbrime/qb-menu/issues)

if you wish to add something to it, do a pull request on the github [Pull Requests](https://github.com/ohbrime/qb-menu/pulls)

