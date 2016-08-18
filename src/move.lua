function tileCheck(index)
  local tile = getTile(index)
  local walk = game.players[index].walking_state.walking
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
