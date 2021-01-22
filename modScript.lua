-- Run with Lua:exec("scripts/BeamNG-Chaos-Mod/modScript.lua")
-- usefull thing: for k,v in pairs(core_environment) do print(k) end

print("loaded chaosMod")

local function replaceAutobello ()
    core_vehicles.replaceVehicle("autobello",{})
end

local function replacePessima ()
    core_vehicles.replaceVehicle("pessima",{})
end

local function spawnChristmas ()
    core_vehicles.spawnNewVehicle("christmas_tree",{})
end



local function heavyFog ()
    core_environment.setFogDensity(0.5)
end



local function strongGravity ()
    core_environment.setGravity(-20)
end

local function weakGravity ()
    core_environment.setGravity(-3)
end

local function invertGravity ()
    core_environment.setGravity(9.81)
end



local function lowFOV ()
    print(be:getPlayerVehicleID(0))

    core_camera.setFOV(be:getPlayerVehicleID(0), 40)
end

local function highFOV ()
    print(be:getPlayerVehicleID(0))

    core_camera.setFOV(be:getPlayerVehicleID(0), 130)
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
}

function runRandomFunction ()
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
