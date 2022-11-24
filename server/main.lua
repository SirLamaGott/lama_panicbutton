local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('lama_panicbutton:qbcore:firepanic')
AddEventHandler('lama_panicbutton:qbcore:firepanic', function(senderPosition)
	local Players = QBCore.Functions.GetQBPlayers()
	local Player = QBCore.Functions.GetPlayerData()
	local jobName = Player.job.name

	if jobName == 'police' then
		for _, qbPlayer in pairs(Players) do
			TriggerEvent('lama_panicbutton:qbcore:sendPosition', senderPosition, 'panic') 
			TriggerEvent('lama_panicbutton:qbcore:showNotification', Config.PanicButtonLayout.Title, Config.PanicButtonLayout.SubTitle, (Config.PanicButtonLayout.Content):format('testName'), Config.PanicButtonLayout.Icon, 1)
		end 
	end
end) 
 
RegisterNetEvent('lama_panicbutton:qbcore:firepos') 
AddEventHandler('lama_panicbutton:qbcore:firepos', function(senderPosition)
	local Players = QBCore.Functions.GetQBPlayers()
	local Player = QBCore.Functions.GetPlayerData()
	local jobName = Player.job.name

	if jobName == 'police' then
		for _, qbPlayer in pairs(Players) do 
			TriggerEvent('lama_panicbutton:qbcore:sendPosition', senderPosition)  
			TriggerEvent('lama_panicbutton:qbcore:showNotification', Config.PositionButtonLayout.Title, Config.PositionButtonLayout.SubTitle, (Config.PositionButtonLayout.Content):format('testName'), Config.PositionButtonLayout.Icon, 1)
		end 
	end
end)  