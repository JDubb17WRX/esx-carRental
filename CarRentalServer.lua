RegisterServerEvent("chargePlayer")
AddEventHandler("chargePlayer", function(chargeAmount)
	TriggerEvent("es:getPlayerFromId", source, function(user)
		user.removeMoney(chargeAmount)
		CancelEvent()
	end)
end)
RegisterServerEvent("devAddPlayer")
AddEventHandler("devAddPlayer", function(devAddAmount)
	TriggerEvent("es:getPlayerFromId", source, function(user)
		user.addMoney(devAddAmount)
		CancelEvent()
	end)
end)