

function matchTile(name)
  old_tiles = {"accelerator","up","right","down","left"}
  for _, t in ipairs(old_tiles) do
    if t == name then
      return true
    end
  end
end

--https://forums.factorio.com/viewtopic.php?p=195459#p195459
for _, surface in pairs(game.surfaces) do
  change_tiles = {}
  for chunk in surface.get_chunks() do
      for x = 0, 31 do
          for y = 0, 31 do
              local pos = {chunk.x * 32 + x, chunk.y * 32 + y}
              local tile = surface.get_tile(pos[1],pos[2])
              if matchTile(tile.name) then
                change_tiles.insert({name="copper-floor3",pos})
                local accel = surface.find_entity("accelerator",pos)
                -- In 0.1.4, the accelerator_charger entity was created on top of the accelerator tile. in 0.1.5, the entities are created for all the other tiles. Hence, we only need to find if accelerator exists. If not, create them.
                if accel == nil then
                  surface.create_entity({name="accelerator_charger",position=pos,force="player"})
                else
                  surface.create_entity({name=tile.name,position=pos,force="player"})
                end
--              surface.create_entity{name="inserter", position=pos} --might also want to specify a force here
              end
          end
      end
  end
end
