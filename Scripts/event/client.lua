local markerPos = vector3(685.15, 577.21, 130.46)
local PlayerPed = PlayerPedId()
local HasAlreadyGotMessage = false
Citizen.CreateThread(function ()
    RegisterCommand('event', function (source, args, raw)
        local PlayerPed = PlayerPedId()
        local coords = vector3(685.15, 577.21, 130.46)
    
        SetEntityCoords(PlayerPed, coords.x, coords.y, coords.z)
    end) 
        


    while true do
    Citizen.Wait(0)
    
        BeginTextCommandSetBlipName('Event')
        local blip1 = AddBlipForCoord(685.15, 577.21, 130.46)
        SetBlipSprite(blip1, 835)



        local playerCoords = GetEntityCoords(PlayerPed)
        local distance = #(playerCoords - markerPos)
        local isinMarker = false
        if distance < 50.0 then
            DrawMarker(1, markerPos.x, markerPos.y, markerPos.z + 1, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 10.0, 10.0, 1.0, 255, 128, 0, 50, false, true, 2, nil, nil, false)
            if distance < 10.0 then
                isinMarker = true
            else
            HasAlreadyGotMessage = false
            end
        else
            Citizen.Wait(2000)
        end
        if isinMarker and not HasAlreadyGotMessage then
            showInfobar('Willkommen Beim Event, warte auf Admins für weitere anweisungen')
            HasAlreadyGotMessage = true
        end
        
    end
   
end)

function showInfobar(msg)

    CurrentActionMsg  = msg
    SetTextComponentFormat('STRING')
    AddTextComponentString(CurrentActionMsg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
   
end


