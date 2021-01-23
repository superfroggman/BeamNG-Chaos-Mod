-- GOOD TO HAVE!: veh:queueLuaCommand("for k,v in pairs(powertrain.getDevice(\"mainEngine\")) do print(k) end")


local veh = scenetree.findObject(be:getPlayerVehicleID(0))

veh:queueLuaCommand("for k,v in pairs(ai) do print(k) end")

veh:queueLuaCommand("ai.setMode('random')")
veh:queueLuaCommand("ai.setAggression(0.1)")
