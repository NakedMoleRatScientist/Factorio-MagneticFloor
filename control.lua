require 'util'
require 'defines'

function setup()
  global.hoverboard = global.hoverboard or {}
  global.charge = global.charge or 0
  if global.hoverboard.status == nil then
    global.hoverboard.status = false
  end
end

script.on_init(setup)

script.on_load(setup)

script.on_event(defines.events.on_tick, function(event)
  initializeGUI()
  hoverMode()
end)

script.on_event(defines.events.on_gui_click,function(event)
  if event.element.name == "hoverboard" then
    if global.hoverboard.status == false then
      global.hoverboard.status = true
      updateGUI()
    elseif global.hoverboard.status == true then
      global.hoverboard.status = false
      updateGUI()
    end
  end
end)

function activeHoverMode()
  local orientation = game.player.walking_state.direction
  if global.charge > 0 then
    global.charge = global.charge - 1
    game.player.walking_state = {walking = true, direction = orientation}
  end
end

function limitHoverboard()
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
    game.player.gui.top.add{type="button", name="hoverboard", caption="Hoverboard Status: Inactive"} -- adds the button to the top flow
    global.hoverboard.status = false
  end
end

function updateGUI()
  if global.hoverboard.status == true then
    game.player.gui.top.hoverboard.caption = "Hoverboard Status: Active"
  elseif global.hoverboard.status == false then
    game.player.gui.top.hoverboard.caption = "Hoverboard Status: Inactive"
  end
end

function activeButton()
  game.player.gui.top.hoverboard.caption = "Hoverboard Status: Active"
end

function hoverMode()
  if global.hoverboard.status == true then
    activeHoverMode()
    tileCheck()
  end
end

function tileCheck()
  local tile = game.player.surface.get_tile(game.player.position.x,game.player.position.y)
  if tile.name == "accelerator" then
    if global.charge <= 40 then
      global.charge = global.charge + 10
    end
  end
end
