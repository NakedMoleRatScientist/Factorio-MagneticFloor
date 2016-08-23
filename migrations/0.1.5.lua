

function matchTile(name)
  old_tiles = {"accelerator","up","right","down","left"}
  for _, t in ipairs(old_tiles) do
    if t == name then
      return true
    end
  end
  return nil
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
          copper_floor = {name ="copper-floor3", position = pos}
          table.insert(change_tiles,copper_floor)
          local accel = surface.find_entity("accelerator_charger",pos)
          -- In 0.1.4, the accelerator_charger entity was created on top of the accelerator tile. in 0.1.5, the entities are created for all the other tiles. Hence, we only need to find if accelerator exists. If not, create them.
          if accel == nil and tile.name == "accelerator" then
            surface.create_entity({name="accelerator_charger",position=pos,force="player"})
          elseif accel ~= nil then
            -- If the existing accelerator is not destroyed, there will be a weirdness in the way that the entity is positioned.
            accel.destroy()
            surface.create_entity({name="accelerator_charger",position=pos,force="player"})
          elseif tile.name ~= "accelerator" then
            surface.create_entity({name=tile.name,position=pos,force="player"})
          end
--              surface.create_entity{name="inserter", position=pos} --might also want to specify a force here
        end
      end
    end
  end
  surface.set_tiles(change_tiles,true)
end
