local M = {}

local myTimer = 0

local function updateGFX(dt)
    print("updating GFX")

    myTimer = myTimer + dt

    if myTimer > 0.5 then
        print("cool")
    end

end

-- public interface

M.updateGFX = updateGFX

return M
