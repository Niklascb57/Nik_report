HT = nil

Citizen.CreateThread(function()
    while HT == nil do
        TriggerEvent('HT_base:getBaseObjects', function(obj) HT = obj end)
        Citizen.Wait(0)
    end
end)


RegisterCommand("Report", function(source, args, user)
    openreport()
end)







--når man trykker e hvad der så kommer frem--
function openreport()
    local elements = {
        { label = "Send Report", value = "SendReport"},
        { label = "Send Bugreport", value = "Bugreport"},
        { label = "Luk", value = "Luk"},
    }
    HT.UI.Menu.Open('default', GetCurrentResourceName(), "vrp_htmenu",
    {
        title    = "Reports", -- Dette er navnet øverst i menuen
        align    = "right", -- Hvor den skal være henne, "top-left" "top-right" "buttom-left" "buttom-right".
        elements = elements -- Denne her går efter "local elements"
    },

    function(data, menu)
        menu = menu
        if(data.current.value == 'Bugreport') then
            menu.close()
            HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                title = "Hvad er fejlen?"
            }, function(data4, menu)
                menu.close()
                if data4 ~= nil then
                    TriggerServerEvent("Fejlen", data4)
                    HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                        title = "Billed af f8 menu(link)"
                    }, function(data5, menu)
                        menu.close()
                        if data5 ~= nil then
                            TriggerServerEvent("f8", data5)
                            HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                                title = "Hvordan skete det?"
                            }, function(data6, menu)
                                menu.close()
                                if data6 ~= nil then
                                    TriggerServerEvent("Grund",data6)
                                end
                            end)
                        end
                    end)
                end
            end)
        end
        if(data.current.value == 'SendReport') then
            menu.close()
            HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                title = "Id på person"
            }, function(data, menu)
                menu.close()
                if data ~= nil then
                    TriggerServerEvent("Idpåperson", data)
                    HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                        title = "Dit id"
                    }, function(data2, menu)
                        menu.close()
                        if data2 ~= nil then
                            TriggerServerEvent("Ditid", data2)
                            HT.UI.Menu.Open('dialog', GetCurrentResourceName(), '', {
                                title = "Grundlag"
                            }, function(data3, menu)
                                menu.close()
                                if data3 ~= nil then
                                    TriggerServerEvent("grundlag",data3)
                                    print(data3)
                                end
                            end)
                        end
                    end)
                end
            end)
        end

        if(data.current.value == 'Luk') then -- Her siger den bare hvis man klikker "Luk" så lukker den.
            menu.close()
        end
    end, function(data, menu)
        menu.close()
    end)
end





 -- 3D TEXT -- 
function DrawText3Ds(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 20, 20, 20, 150)
end