-- Seat Script Made By Hayley.H#0001

RegisterServerEvent('SeatNear')
AddEventHandler('SeatNear', function(ID, Vehicle)
    TriggerClientEvent('seat', ID, Vehicle)
end)

RegisterServerEvent('UnseatNear')
AddEventHandler('UnseatNear', function(ID, Vehicle)
    TriggerClientEvent('unseat', ID, Vehicle)
end)

-----------------------------------------------------------
-- THE BELOW IS FOR DEBUGGING AND CHECKERS. DO NOT TOUCH --
-----------------------------------------------------------

	TriggerClientEvent("Fax:ClientPrint", source, "------------------")
	TriggerClientEvent("Fax:ClientPrint", source, "Current Version: " .. curVersion)
	TriggerClientEvent("Fax:ClientPrint", source, "Script Credits: Script made by FAXES, Discord: FAXES#8655 - http://faxes.zone/discord")
end)

PerformHttpRequest("https://raw.githubusercontent.com/FAXES/ResourceStats/master/AOP.json", function(err, shit, headers)
	local data = json.decode(shit)
	if data.announce == 1 and curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^5 New Script Version: ^7" .. data.version .. ". ^5New Announcement: ^7" .. data.message .. "\n")
	elseif data.announce == 1 then
		print("\n^5[Fax-AOP ^7- ^1Announcement^5]^7 " .. data.message .. "\n")
	elseif curVersion < data.version then
		print("\n^5[Fax-AOP ^7- ^3Notice^5]^7 Fax-AOP has a new version! Your version: " .. curVersion .. ". New version: " .. data.version .. "\nChangelog: " .. data.changelog .. "\n")
	end
end)