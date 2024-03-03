Citizen.CreateThread(function()
    while true do
        local PlayerPed = PlayerPedId()
        local PlayerCoords = GetEntityCoords(PlayerPed)
        local distance = Vdist(PlayerCoords, Config.Destination.x, Config.Destination.y, Config.Destination.z)

        if IsControlJustReleased(0, 38) then
            if distance < 20.0 then
                ShowNotification('ja')
                showInfobar('WILLKOMMEN BEIM EVENT!!! Bitte warte auf weitere Anweisungen')
            else
                ShowNotification('nein')
            end
        end
        Citizen.Wait(1)
    end

end)


function ShowNotification(text)
 SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
 DrawNotification(false, true)
end
function showInfobar(msg)

    CurrentActionMsg  = msg
    SetTextComponentFormat('STRING')
    AddTextComponentString(CurrentActionMsg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
   
end