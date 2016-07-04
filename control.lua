require 'util'
require 'gui'
require 'test'

function print(stuff)
  game.players[1].print(stuff)
end

function setup()
  global.hoverboard = global.hoverboard or {}
  for _, player in pairs(game.players) do
    createPlayerMag(player.index)
  end
end

function createPlayerMag(i)
  local entity = {
    charge = 0,
    active = false
  }
  global.hoverboard[i] = entity
end

script.on_init(setup)

function getTile()
  return game.player.surface.get_tile(game.player.position.x,game.player.position.y)
end

script.on_event(defines.events.on_tick, function(event)
  --if global.dead == false then
  --  if global.tick == 0 then
  --    UI.initialize()
  --    global.tick = global.tick + 1
  --  end
    -- hoverMode()
  --end
end)

script.on_event(defines.events.on_player_placed_equipment, function(event)
  if event.equipment.name == "hoverboard" then
    print("hoverboard placed.")
  end
end)

script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == "player" then
    global.dead = true
  end
end)

script.on_event(defines.events.on_gui_click,function(event)
  if event.element.name == "mode" then
    if global.hoverboard.status == false then
      global.hoverboard.status = true
      UI.switchMode()
    elseif global.hoverboard.status == true then
      global.hoverboard.status = false
      UI.switchMode()
    end
  end
end)

script.on_event(defines.events.on_built_entity,function(event)
  if event.created_entity.name == "accelerator" then
    game.player.print("beep")
  end
end)


function activeHoverMode()
  local orientation = game.player.walking_state.direction
  if global.charge > 0 then
    global.charge = global.charge - 1
    game.player.walking_state = {walking = true, direction = orientation}
  end
end

function hoverMode()
  if global.hoverboard.status == true then
    activeHoverMode()
    tileCheck()
    Ui.updateStatus()
  end
end

function inboundTile(name)
  local tiles = {"copper-floor", "copper-floor2", "copper-floor3","accelerator","down","left","up","right"}
  for _, tile in ipairs(tiles) do
    if tile == name then
      return true
    end
  end
  return false
end


function tileCheck()
  local tile = getTile()
  local walk = game.player.walking_state.walking
  if tile.name == "accelerator" then
    if global.charge <= 40 then
      global.charge = global.charge + 10
    end
  elseif tile.name == "down" then
    game.player.walking_state = {walking = walk, direction = defines.direction.south}
  elseif tile.name == "up" then
    game.player.walking_state = {walking = walk, direction = defines.direction.north}
  elseif tile.name == "right" then
    game.player.walking_state = {walking = walk, direction = defines.direction.east}
  elseif tile.name == "left" then
    game.player.walking_state = {walking = walk, direction = defines.direction.west}
  elseif inboundTile(tile.name) == false then
    global.charge = 0
  end
end
