

HT = nil
TriggerEvent('HT_base:getBaseObjects', function(obj)
    HT = obj
end)


RegisterServerEvent("Idpåperson")
AddEventHandler("Idpåperson", function(data)
    local id = json.encode(tonumber(data.value))

    if data.value == "" or data.value == "" or data.value == null or data.value == 0 or data.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "Report",
            embeds = {
                {              
                    title = "Personen der gør noget forkert.";
                    description = ''..id..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end)

RegisterServerEvent("Ditid")
AddEventHandler("Ditid", function(data2)
    local sender = json.encode(tonumber(data2.value))

    if data2.value == "" or data2.value == "" or data2.value == null or data2.value == 0 or data2.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "Report",
            embeds = {
                {              
                    title = "Ham der sender reporten";
                    description = ''..sender..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end)

RegisterServerEvent("grundlag")
AddEventHandler("grundlag", function(data3)
    local grundlag = json.encode(data3.value)

    if data3.value == "" or data3.value == "" or data3.value == null or data3.value == 0 or data3.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "Report",
            embeds = {
                {              
                    title = "grunden";
                    description = ''..grundlag..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du sendte en report!", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

--------------------------------------------------------------------------------------------------------------------
--
--
--                                         magni
--
-------------------------------------------------------------------------------------------------------------------



RegisterServerEvent("Fejlen")
AddEventHandler("Fejlen", function(data4)
    local Fejlen = json.encode(tonumber(data4.value))

    if data4.value == "" or data4.value == "" or data4.value == null or data4.value == 0 or data4.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "bugreport",
            embeds = {
                {              
                    title = "Fejlen";
                    description = ':'..Fejlen..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end)


RegisterServerEvent("f8")
AddEventHandler("f8", function(data5)
    local f8 = json.encode(data5.value)

    if data5.value == "" or data5.value == "" or data5.value == null or data5.value == 0 or data5.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "bugreport",
            embeds = {
                {              
                    title = "f8 fejl";
                    description = ''..f8..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
    end
end)

RegisterServerEvent("Grund")
AddEventHandler("Grund", function(data6)
    local Grund = json.encode(data6.value)

    if data6.value == "" or data6.value == "" or data6.value == null or data6.value == 0 or data6.value == nil then
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du skal indtaste et id!", type = "error", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    else
        PerformHttpRequest(cfg.Webhook, function(o,p,q) end,'POST',json.encode(
        {
            username = "bugreport",
            embeds = {
                {              
                    title = "Grund";
                    description = ''..Grund..'';
                    color = 3993603;
                }
            }
        }), { ['Content-Type'] = 'application/json' })
        TriggerClientEvent("pNotify:SendNotification", source,{text = "Du sendte en bugreport!", type = "success", queue = "global", timeout = 5000, layout = "centerRight",animation = {open = "gta_effects_fade_in", close = "gta_effects_fade_out"}})
    end
end)

