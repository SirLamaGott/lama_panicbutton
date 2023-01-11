RegisterNetEvent('lama_panicbutton:firepanic')
AddEventHandler('lama_panicbutton:firepanic', function(senderPosition)
	local xPlayer2 = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then 
			xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition, 'panic') 
			xPlayer.triggerEvent('esx:showAdvancedNotification', Config.PanicButtonLayout.Title, Config.PanicButtonLayout.SubTitle, (Config.PanicButtonLayout.Content):format(xPlayer2.getName()), Config.PanicButtonLayout.Icon, 1)
		end
	end
end) 

RegisterNetEvent('lama_panicbutton:firepos')
AddEventHandler('lama_panicbutton:firepos', function(senderPosition)
	local xPlayer2 = ESX.GetPlayerFromId(source)
	local xPlayers = ESX.GetPlayers()

    for i=1, #xPlayers, 1 do
		local xPlayer = ESX.GetPlayerFromId(xPlayers[i])
        if xPlayer.job.name == 'police' then 
			xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition) 
			xPlayer.triggerEvent('esx:showAdvancedNotification', Config.PositionButtonLayout.Title, Config.PositionButtonLayout.SubTitle, (Config.PositionButtonLayout.Content):format(xPlayer2.getName()), Config.PositionButtonLayout.Icon, 1)
		end
	end
end)  