RegisterNetEvent('lama_panicbutton:firepanic')
AddEventHandler('lama_panicbutton:firepanic', function(senderPosition)
	local xPlayers = ESX.GetExtendedPlayers("job", "police")
	local xPlayer2 = ESX.GetPlayerFromId(source)

	if xPlayer2.job.name == 'police' then
		for _, xPlayer in pairs(xPlayers) do
			xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition, 'panic') 
			xPlayer.triggerEvent('esx:showAdvancedNotification', Config.PanicButtonLayout.Title, Config.PanicButtonLayout.SubTitle, Config.PanicButtonLayout.Content, Config.PanicButtonLayout.Icon, 1)
		end 
	end
end) 

RegisterNetEvent('lama_panicbutton:firepos')
AddEventHandler('lama_panicbutton:firepos', function(senderPosition)
	local xPlayers = ESX.GetExtendedPlayers("job", "police")
	local xPlayer2 = ESX.GetPlayerFromId(source)
	
	if xPlayer2.job.name == 'police' then
		for _, xPlayer in pairs(xJobPlayers) do
			xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition) 
			xPlayer.triggerEvent('esx:showAdvancedNotification', Config.PositionButtonLayout.Title, Config.PositionButtonLayout.SubTitle, Config.PositionButtonLayout.Content, Config.PositionButtonLayout.Icon, 1)
			--xPlayer.triggerEvent('esx:showAdvancedNotification', 'Polizei System', '~b~Position', 'Officer ~b~'..xPlayer.getName()..'~s~ hat seine Positon übermittelt!', 'CHAR_CALL911', 1)
		end 
	end
end)  