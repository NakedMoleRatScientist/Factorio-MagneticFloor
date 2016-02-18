require 'util'
require 'defines'



script.on_event(defines.events.on_tick, function(event)
  manualHoverMode()
  initializeGUI()
end)

function manualHoverMode()
  local tile = game.player.surface.get_tile(game.player.position["x"],game.player.position["y"])
  local count =  0
  --http://www.factorioforums.com/forum/viewtopic.php?f=25&t=16571
  local armor = game.player.get_inventory(defines.inventory.player_armor)[1]
  if armor.valid_for_read then
    if armor.has_grid then
      local equipment = armor.grid.equipment
      for i,e in pairs(equipment) do
        if e.name =="hoverboard" then
          if tile.name ~= "copper-floor" then
            e.energy = 0
          end
          if count > 0 then
            game.player.insert(armor.grid.take(e))
          end
          count = count + 1
        end
      end
    end
  end
end

function initializeGUI()
  if game.player.gui.top.hoverboard == nil then
    game.player.gui.top.add{type="button", name="hoverboard", caption="Hoverboard Status"} -- adds the button to the top flow
  end
end
