-- Advanced Seating Made By Hayley.H#0001

-----------------------------------------------------------
--                     SEAT SCRIPT                       --
-----------------------------------------------------------

RegisterCommand("seat", function(source, args, rawCommand)
	if #args == 1 then
		if GetPlayerName(args[1]) then
			if args[1] ~= source then
				TriggerClientEvent("SeatNear", args[1], source)
			else
				TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "You cannot Seat yourself.")
			end
		else
			TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "/seat [id]")
		end
	else
		TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "/seat [id]")
	end
end, false)

-----------------------------------------------------------
--                   UNSEAT SCRIPT                       --
-----------------------------------------------------------

RegisterCommand("unseat", function(source, args, rawCommand)
	if #args == 1 then
		if GetPlayerName(args[1]) then
			if args[1] ~= source then
				TriggerClientEvent("UnseatNear", args[1], source)
			else
				TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "You cannot Unseat yourself.")
			end
		else
			TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "/unseat [id]")
		end
	else
		TriggerClientEvent("chatMessage", source, "Error: ", {255, 0, 0}, "/unseat [id]")
	end
end, false)

-- 

RegisterServerEvent('SeatNear')
AddEventHandler('SeatNear', function(ID, Vehicle)
    RegisterCommand('seat', ID, Vehicle)
end)

RegisterServerEvent('UnseatNear')
AddEventHandler('UnseatNear', function(ID, Vehicle)
    RegisterCommand('unseat', ID, Vehicle)
end)

-----------------------------------------------------------
-- THE BELOW IS FOR DEBUGGING AND CHECKERS. DO NOT TOUCH --
-----------------------------------------------------------

PerformHttpRequest("http://some-cool-url.here/some-important-document.txt", function (errorCode, resultData, resultHeaders)
  print("Returned error code:" .. tostring(errorCode))
  print("Returned data:" .. tostring(resultData))
  print("Returned result Headers:" .. tostring(resultHeaders))
end)





