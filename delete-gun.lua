require "lib.moonloader"

local TAG = "[DG]"

function main()
    while not isSampAvailable() do wait(100) end

    sampAddChatMessage(TAG .. " Activation.", 0x00FF00)
    sampAddChatMessage(TAG .. " Take a weapon in your hands — and press F12.", 0xFF00FF)

    while true do
        wait(0)

        if isKeyJustPressed(VK_F12) then
            local ped = PLAYER_PED
            local weapon = getCurrentCharWeapon(ped)

            if weapon ~= 0 then
                removeWeaponFromChar(ped, weapon)
                sampAddChatMessage(TAG .. " Gun (ID: " .. tostring(weapon) .. ") removed from hands.", 0x00FF00)
            else
                sampAddChatMessage(TAG .. " In hand there is not weapon.", 0x8B0000)
            end
        end
    end
end