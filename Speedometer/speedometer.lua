-- Speed Values
--[[ 
local mph = 2.2369
local kph = 3.6 
]]

function text(content) 
    SetTextFont(2)
    SetTextProportional(0)
    SetTextScale(1.9,1.9)
    SetTextEntry("STRING")
    AddTextComponentString(content .. " MPH")
    DrawText(0.8,0.9)
end
Citizen.CreateThread(function()
-- Speed only shows while in vehicle
    while true do
        Citizen.Wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*2.2369)
        -- Condition to check if the ped is in a vehicle 
        if(IsPedInAnyVehicle(GetPlayerPed(-1), false)) then
            text(math.floor(speed))
        end
    end
end)
