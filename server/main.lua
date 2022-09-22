RegisterNetEvent('lama_panicbutton:firepanic')
AddEventHandler('lama_panicbutton:firepanic', function(senderPosition)
	local xPlayers = ESX.GetExtendedPlayers("job", "police")
	--local xPlayer2 = ESX.GetPlayerFromId(source)
	
	for _, xPlayer in pairs(xPlayers) do
		xPlayer.triggerEvent('lama_panicbutton:sendPosition', senderPosition) 
		xPlayer.triggerEvent('esx:showAdvancedNotification', 'Polizei System', '~r~PANIC BUTTON', 'Es wurde soeben ein PanicButton ausgelöst!', 'CHAR_CALL911', 1)
	end 

end) 