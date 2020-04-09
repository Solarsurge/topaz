-----------------------------------
--    Area: Phomiuna_Aqueducts
-- NPC: Oil Lamp - Darkness (West)
-- ID: 16888071  !pos -63 -26 57
-----------------------------------
require("scripts/globals/missions");
local ID = require("scripts/zones/Phomiuna_Aqueducts/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local DoorOffset = npc:getID();

    player:messageSpecial(ID.text.LAMP_OFFSET+7); -- dark lamp
    npc:openDoor(7); -- lamp animation

    local element = VanadielDayElement();
    -- printf("element: %u",element);

    if (element == 6 or element == 7) then -- lightday or darkday
        if (GetNPCByID(DoorOffset-1):getAnimation() == 8) then -- lamp light open ?
            GetNPCByID(DoorOffset-6):openDoor(15); -- Open Door _0rk
        end
    end

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
