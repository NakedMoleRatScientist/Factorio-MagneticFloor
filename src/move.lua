function getTile(index)
  return game.players[index].surface.get_tile(game.players[index].position.x,game.players[index].position.y)
end

function getEntity(index)
  position = {game.players[index].position.x, game.players[index].position.y}
  return game.players[index].surface.find_entity("up",position)
end

function tileCheck(index)
  local tile = getTile(index)
  local walk = game.players[index].walking_state.walking
  local entity = getEntity(index)
  if entity ~= nil then
    print("YES!")
  end
  if tile.name == "accelerator" then
    charge_hoverboard(index,tile)
  elseif tile.name == "down" and global.hoverboard[index].charge > 0 then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.south}
  elseif tile.name == "up" and global.hoverboard[index].charge > 0 then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.north}
  elseif tile.name == "right" and global.hoverboard[index].charge > 0 then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.east}
  elseif tile.name == "left" and global.hoverboard[index].charge > 0 then
    game.players[index].walking_state = {walking = walk, direction = defines.direction.west}
  elseif inboundTile(tile.name) == false then
    global.hoverboard[index].charge = 0
  end
end
