QBCore = exports['qb-core']:GetCoreObject()
RegisterCommand('+panic', function(source, args, rawCommand)
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:qbcore:firepanic', senderPosition)
end, false)

RegisterCommand('+position', function(source, args, rawCommand) 
	local senderPosition = GetEntityCoords(PlayerPedId())
	TriggerServerEvent('lama_panicbutton:qbcore:firepos', senderPosition)
end, false)

RegisterKeyMapping('+panic', Lang:t('panicbutton'), 'keyboard', Config.PanicButton)
RegisterKeyMapping('+position', Lang:t('positionbutton'), 'keyboard', Config.PositionButton)  

RegisterNetEvent('lama_panicbutton:qbcore:sendPosition') 
AddEventHandler('lama_panicbutton:qbcore:sendPosition', function(pos, type) 
	if Config.UseSounds then if type == 'panic' then TriggerServerEvent('InteractSound_SV:PlayOnSource', 'panic', 1.0) end end  
	Citizen.CreateThread(function()
		while true do
			local sleep = 1000
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)
			sleep = 0

			showHelpNotification(Lang:t('waypoint'))
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

RegisterNetEvent('lama_panicbutton:qbcore:showNotification')
AddEventHandler('lama_panicbutton:qbcore:showNotification', function(sender, subject, msg, textureDict, iconType)
	AddTextEntry('AdvancedNotification', msg)
    BeginTextCommandThefeedPost('AdvancedNotification')
    EndTextCommandThefeedPostMessagetext(textureDict, textureDict, false, iconType, sender, subject)
end)

function showHelpNotification(msg)
	SetNotificationTextEntry("STRING")
    AddTextComponentString(msg)
    DrawNotification(0, 0, 0, -1) 
end

