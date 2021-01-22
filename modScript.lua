-- Run with Lua:exec("scripts/BeamNG-Chaos-Mod/modScript.lua")

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
    for k,v in pairs(core_environment) do print(k) end

    core_environment.setFogDensity(0.5)
end



local function strongGravity ()
    core_environment.setGravity(-20)
end

local function weakGravity ()
    for k,v in pairs(core_environment) do print(k) end
    core_environment.setGravity(-3)
end

local function invertGravity ()
    for k,v in pairs(core_environment) do print(k) end
    core_environment.setGravity(9.81)
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
end


resetAll()
runRandomFunction()
