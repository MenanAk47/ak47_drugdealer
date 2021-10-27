function isPlayerDead()
    return IsEntityDead(GetPlayerPed(-1))
end

function showNotification(text, eType, time)
	local message = text
	if eType == 'error' then
        message = '~r~'..message
    elseif eType == 'inform' then
        message = '~y~'..message
    elseif eType == 'success' then
        message = '~g~'..message
    end
    ShowNotificationDefault(message)
end

ShowNotificationDefault = function(msg)
	SetNotificationTextEntry('STRING')
	AddTextComponentSubstringPlayerName(msg)
	DrawNotification(false, true)
end

RegisterNetEvent('ak47_drugsell:policeAlert')
AddEventHandler('ak47_drugsell:policeAlert', function(targetCoords, street)
    ShowNotificationDefault('~b~Citizen Report:~s~ ~r~Drug sell in progress at '..street)
    local alpha = 250
    local sellerBlip = AddBlipForRadius(targetCoords.x, targetCoords.y, targetCoords.z, 50.0)
    SetBlipHighDetail(sellerBlip, true)
    SetBlipColour(sellerBlip, 1)
    SetBlipAlpha(sellerBlip, alpha)
    SetBlipAsShortRange(sellerBlip, true)
    while alpha ~= 0 do
        Citizen.Wait(Config.PoliceAlertBlipTime * 4)
        alpha = alpha - 1
        SetBlipAlpha(sellerBlip, alpha)
        if alpha == 0 then
            RemoveBlip(sellerBlip)
            return
        end
    end
end)