RegisterNetEvent('lama_panicbutton:firepanic')
AddEventHandler('lama_panicbutton:firepanic', function(senderPosition)
	local xPlayers = ESX.GetExtendedPlayers("job", "police")
	--local xPlayer2 = ESX.GetPlayerFromId(source)
	
	for _, xPlayer in pairs(xPlayers) do
		xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition, 'panic') 
		xPlayer.triggerEvent('esx:showAdvancedNotification', 'Polizei System', '~r~PANIC BUTTON', 'Officer ~r~'..xPlayer.getName()..'~s~ hat seinen Panic Button ausgelöst!', 'CHAR_CALL911', 1)
	end 
	
end) 

RegisterNetEvent('lama_panicbutton:firepos')
AddEventHandler('lama_panicbutton:firepos', function(senderPosition)
	local xPlayers = ESX.GetExtendedPlayers("job", "police")
	
	for _, xPlayer in pairs(xPlayers) do
		xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition) 
		xPlayer.triggerEvent('esx:showAdvancedNotification', 'Polizei System', '~b~Position', 'Officer ~b~'..xPlayer.getName()..'~s~ hat seine Positon übermittelt!', 'CHAR_CALL911', 1)
	end 
	
end) 