-- Resource Metadata
Citizen.CreateThread(function()

    while true do
        Citizen.Wait(10000)


        TriggerEvent('skinchanger:getSkin', function(skinData)

          if skinData ~= nil then
               if skinData ['beard_2'] > 0 and skinData ['beard_2'] < 10 then
                    skinData['beard_2'] = skinData ['beard_2'] +1
                    TriggerEvent('skinchanger:loadSkin', skinData)
                 TriggerEvent('esx_skin:save', skinData)
               end
            end
        end)
        
    end

end)




