RegisterCommand('+panic', function(source, args, rawCommand)
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:firepanic', senderPosition)
end, false)

RegisterCommand('+position', function(source, args, rawCommand) 
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:firepos', senderPosition)
end, false)

RegisterKeyMapping('+panic', _U('panicbutton'), 'keyboard', Config.PanicButton)
RegisterKeyMapping('+position', _U('positionbutton'), 'keyboard', Config.PositionButton) 

RegisterNetEvent('lama_panicbutton:sendPosition') 
AddEventHandler('lama_panicbutton:sendPosition', function(pos, type) 
	if Config.UseSounds then if type == 'panic' then TriggerServerEvent('InteractSound_SV:PlayOnSource', 'panic', 1.0) end end  
	Citizen.CreateThread(function()
		while true do
			local sleep = 1000
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)
			sleep = 0

			ESX.ShowHelpNotification(_U('waypoint'), false, true)
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