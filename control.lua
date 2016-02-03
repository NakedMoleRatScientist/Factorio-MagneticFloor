require 'util'
require 'defines'

script.on_event(defines.events.on_tick, function(event)
  tile = game.player.surface.get_tile(game.player.position["x"],game.player.position["y"])
  if tile.name ~= "copper-floor" then
    --http://www.factorioforums.com/forum/viewtopic.php?f=25&t=16571
    armor = game.player.get_inventory(defines.inventory.player_armor)[1]
    if armor.valid_for_read then
      if armor.has_grid then
        equipment = armor.grid.equipment
        for i,e in pairs(equipment) do
          if e.name == "hoverboard" then
            e.energy = 0
          end
        end
      end
    end
  end
end)
