

print("loaded chaosMod")

local function chaosSpawnCar ()
    -- for k,v in pairs(core_vehicles) do print(k) end
    core_vehicles.replaceVehicle("autobello",{})
end


local c_tbl =
{
    [1] = chaosSpawnCar,
}

function runRandomFunction ()
    local func = c_tbl[math.ceil(math.random()* #c_tbl)]
    if(func) then
        func()
    else
        print("chaos function could not be executed")
    end
end


runRandomFunction()
