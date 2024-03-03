-- Resource Metadata
RegisterCommand('tpw', function (source, args, raw)
    local PlayerPed = PlayerPedId()
    local waypoint = GetFirstBlipInfoId(8)
    local waypointcoords = GetBlipInfoIdCoord(waypoint)

    SetEntityCoords(PlayerPed, waypointcoords.x, waypointcoords.y, waypointcoords.z)



end)