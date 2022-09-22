RegisterCommand('panic', function(source, args, rawCommand)
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:firepanic', senderPosition)
end, false)

RegisterCommand('position', function(source, args, rawCommand)
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:firepos', senderPosition)
end, false)

RegisterKeyMapping('panic', 'Notfall Knopf', 'keyboard', 'HOME')
RegisterKeyMapping('position', 'Position Knopf', 'keyboard', 'HOME')

RegisterNetEvent('lama_panicbutton:sendPosition') 
AddEventHandler('lama_panicbutton:sendPosition', function(pos, type) 
	if type == panic then TriggerServerEvent('InteractSound_SV:PlayOnSource', 'panic', 1.0) end
	Citizen.CreateThread(function()
		while true do
			local sleep = 1000
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)
			sleep = 0

			ESX.ShowHelpNotification('Drücke ~INPUT_CONTEXT~ um einen Wegpunkt zu setzen oder ~INPUT_DETONATE~, um die Anfrage abzulehnen.', false, true)
			if IsControlJustReleased(2, 38) then
				SetNewWaypoint(pos.x, pos.y)
				break
				
			elseif IsControlJustReleased(2, 47) then
				break
			end

			Citizen.Wait(sleep)
		end
	end) 
end)