-- GOOD TO HAVE!: veh:queueLuaCommand("for k,v in pairs(powertrain.getDevice(\"mainEngine\")) do print(k) end")


local veh = scenetree.findObject(be:getPlayerVehicleID(0))
print(veh:queueLuaCommand("print(\"Hello World\")")) 

veh:queueLuaCommand("for k,v in pairs(powertrain.getDevice(\"mainEngine\")) do print(k) end")