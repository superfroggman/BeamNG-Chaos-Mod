-- Run with Lua:exec("scripts/BeamNG-Chaos-Mod/modScript.lua")
-- usefull thing: for k,v in pairs(core_environment) do print(k) end

print("loaded chaosMod")

local function replaceAutobello ()
    print("Replaced vehicle with picollina")
    core_vehicles.replaceVehicle("autobello",{})
end

local function replacePessima ()
    print("Replaced vehicle with pessima")
    core_vehicles.replaceVehicle("pessima",{})
end

local function spawnChristmas ()
    print("Spawned christmas tree")
    core_vehicles.spawnNewVehicle("christmas_tree",{})
end



local function heavyFog ()
    print("Added heavy fog")
    core_environment.setFogDensity(0.5)
end



local function strongGravity ()
    print("Strong gravity")
    core_environment.setGravity(-20)
end

local function weakGravity ()
    print("Weak gravity")
    core_environment.setGravity(-3)
end

local function invertGravity ()
    print("Inverted gravity")
    core_environment.setGravity(9.81)
end



local function lowFOV ()
    print("Low FOV")
    core_camera.setFOV(be:getPlayerVehicleID(0), 40)
end

local function highFOV ()
    print("High FOV")
    core_camera.setFOV(be:getPlayerVehicleID(0), 130)
end

local function rotateCamera ()
    print("Flipped camera")
    core_camera.setRotation(be:getPlayerVehicleID(0), {180,0,0})
end



local function hotEngine ()
    print("Hot engine")
    local veh = scenetree.findObject(be:getPlayerVehicleID(0))

    veh:queueLuaCommand("powertrain.getDevice('mainEngine').thermals.engineBlockTemperature = 250")
end

local function explodeVehicle ()
    print("Explode vehicle")
    local veh = scenetree.findObject(be:getPlayerVehicleID(0))
    veh:queueLuaCommand("fire.explodeVehicle()")
end

local function shiftToReverse ()
    local veh = scenetree.findObject(be:getPlayerVehicleID(0))
    veh:queueLuaCommand("drivetrain.shiftToGear(-1)")
end



local function crazyAI ()
    print("Crazy AI")
    local veh = scenetree.findObject(be:getPlayerVehicleID(0))
    veh:queueLuaCommand("ai.setMode('random')")
    veh:queueLuaCommand("ai.setAggression(2)")
end

local function carefullAI ()
    print("Carefull AI")
    local veh = scenetree.findObject(be:getPlayerVehicleID(0))
    veh:queueLuaCommand("ai.setMode('random')")
    veh:queueLuaCommand("ai.setAggression(0.1)")
end





local c_tbl =
{
    replaceAutobello,
    replacePessima,
    spawnChristmas,

    heavyFog,

    strongGravity,
    weakGravity,
    invertGravity,

    lowFOV,
    highFOV,
    rotateCamera,

    hotEngine,
    explodeVehicle,
    shiftToReverse,

    crazyAI,
    carefullAI,
}

local function runRandomFunction ()
    local func = c_tbl[math.ceil(math.random()* #c_tbl)]
    if(func) then
        func()
    else
        print("chaos function could not be executed")
    end
end

local function resetAll ()
    core_environment.setFogDensity(0)
    core_environment.setGravity(-9.81)
    core_camera.setFOV(be:getPlayerVehicleID(0), 80)
end


resetAll()
runRandomFunction()
