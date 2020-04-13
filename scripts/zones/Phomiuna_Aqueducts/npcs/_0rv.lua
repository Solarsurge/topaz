-----------------------------------
--    Area: Phomiuna_Aqueducts
--  NPC: Oil Lamp - South (West)
-- Opens Door at F-9 from inside.
--  ID: 16888055 !pos -63 -26 37
-----------------------------------

function onTrade(player,npc,trade)
end

function onTrigger(player,npc)

    local DoorOffset = npc:getID() - 1

    if (GetNPCByID(DoorOffset):getAnimation() == 9) then
        if (player:getZPos() > 35) then
            npc:openDoor(7) -- lamp animation
            GetNPCByID(DoorOffset):openDoor(7) -- _0rg
        end
    end

end

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end
