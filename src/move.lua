function getTile(index)
  return game.players[index].surface.get_tile(game.players[index].position.x,game.players[index].position.y)
end

function getDirectiveEntity(index)
  position = {game.players[index].position.x, game.players[index].position.y}
  local list = {"left","down","up","right"}
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

function tileCheck(index)
  local tile = getTile(index)
  if inboundTile(tile.name) == false then
    global.hoverboard[index].charge = 0
    return
  end
  local walk = game.players[index].walking_state.walking
  local entity = getDirectiveEntity(index)
  if entity ~= nil and global.hoverboard[index].charge > 0 then
    if entity.name == "up" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.north}
    elseif entity.name == "down" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.south}
    elseif entity.name == "left" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.west}
    elseif entity.name == "right" then
      game.players[index].walking_state = {walking = walk, direction = defines.direction.east}
    elseif entity.name == "accelerator" then
      charge_hoverboard(index,tile)
    end
  end
end
