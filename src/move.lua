function getTile(index)
  return game.players[index].surface.get_tile(game.players[index].position.x,game.players[index].position.y)
end

function getDirectiveEntity(index)
  position = {game.players[index].position.x, game.players[index].position.y}
  local list = {"left","down","up","right","accelerator_charger"}
  for _, name in ipairs(list) do
    local target = game.players[index].surface.find_entity(name,position)
    if target ~= nil then
      return target
    end
  end
  return nil
end

function inboundTile(name)
  local tiles = {"copper-floor", "copper-floor2", "copper-floor3"}
  for _, tile in ipairs(tiles) do
    if tile == name then
      return true
    end
  end
  return false
end

function charge_hoverboard(index,entity)
  local charge_needed = 5 - global.hoverboard[index].charge
  local energy_needed = (charge_needed) * "1000"
  if (entity.energy - energy_needed) > 0 then
    entity.energy = entity.energy - energy_needed
    global.hoverboard[index].charge = global.hoverboard[index].charge + charge_needed
  else
    print("Insufficient energy for charging.")
  end
end

function motionCheck(index,entity)
  local walk = game.players[index].walking_state.walking
  if entity.name == "up" then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.north}
  elseif entity.name == "down" then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.south}
  elseif entity.name == "left" then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.west}
  elseif entity.name == "right" then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.east}
  end
end


function locomotion(index)
  local orientation = game.players[index].walking_state.direction
  if global.hoverboard[index].charge > 0 then
    if game.tick % 60 == 0 then
      global.hoverboard[index].charge = global.hoverboard[index].charge - 1
    end
    game.players[index].walking_state = {walking = true, direction = orientation}
  end
end

function tileCheck(index)
  local tile = getTile(index)
  if inboundTile(tile.name) == false then
    global.hoverboard[index].charge = 0
    return
  end
  local entity = getDirectiveEntity(index)
  if entity == nil then
    return
  end
  if entity.name == "accelerator_charger" then
    charge_hoverboard(index,entity)
    return
  end
  if global.hoverboard[index].charge > 0 then
    motionCheck(index,entity)
  end
end

script.on_event("switch_hoverboard_mode",function(event)
  UI.switchMode(global.hoverboard[event.player_index].active,event.player_index)
end)
