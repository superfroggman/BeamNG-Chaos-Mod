-- GOOD TO HAVE!: veh:queueLuaCommand("for k,v in pairs(powertrain.getDevice(\"mainEngine\")) do print(k) end")


local veh = scenetree.findObject(be:getPlayerVehicleID(0))

veh:queueLuaCommand("for k,v in pairs(drivetrain) do print(k) end")

veh:queueLuaCommand("drivetrain.shiftToGear(-1)")
