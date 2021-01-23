local veh = scenetree.findObject(be:getPlayerVehicleID(0))
print(veh:queueLuaCommand("print(\"Hello World\")")) 