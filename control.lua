require 'util'
require "stdlib/log/logger"
require "stdlib/gui/gui"
require 'src/gui'
require 'src/move'
require "src/test"

LOG = Logger.new("MagneticFloor")

function print(stuff)
  game.players[1].print(stuff)
end

function printBool(stuff)
  game.players[1].print(tostring(stuff))
end

function setup()
  global.hoverboard = global.hoverboard or {}
end

function activateEquipment(index)
  global.hoverboard[index].inserted = true
  global.hoverboard[index].active = false
  UI.initialize(index)
end

function deactivateEquipment(index)
  if global.hoverboard[index].inserted == true then
    global.hoverboard[index].inserted = false
    UI.destroy(index)
  end
end

function createPlayerMag(i)
  local entity = {
    charge = 0,
    active = false,
    inserted = false,
  }
  global.hoverboard[i] = entity
end

script.on_init(setup)

function getArmor(index)
  local armor = game.players[index].get_inventory(defines.inventory.player_armor)[1]
  return armor
end

function armorCheck(index)
  local armor = getArmor(index)
  if armor.grid ~= nil then
    return true
  end
  return false
end

script.on_event(defines.events.on_player_joined_game, function(event)
  createPlayerMag(event.player_index)
end)

script.on_event(defines.events.on_tick, function(event)
  local n = 0
  for k,v in pairs(game.players) do
    if global.hoverboard[k] == nil then
      createPlayerMag(v.index)
    end
    if global.hoverboard[k].inserted == true and global.hoverboard[k].active == true then
      locomotion(k)
      tileCheck(k)
      UI.updateStatus(k)
    end
  end

end)

script.on_event(defines.events.on_player_armor_inventory_changed, function(event)
  local index = event.player_index
  if armorCheck(index) then
    local armor = getArmor(index)
    local equipment = armor.grid.equipment
    for i, e in ipairs(equipment) do
      if e.name == "hoverboard" then
        activateEquipment(index)
      end
    end
  else
    deactivateEquipment(index)
  end
end)

script.on_event(defines.events.on_player_placed_equipment, function(event)
  local index = event.player_index
  if armorCheck(index) and event.equipment.name == "hoverboard" then
      activateEquipment(index)
  end
end)

script.on_event(defines.events.on_player_removed_equipment, function(event)
  local index = event.player_index
  if armorCheck(index) and event.equipment == "hoverboard" then
    deactivateEquipment(index)
  end
end)

script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == "player" then
    global.dead = true
  end
end)

script.on_event(defines.events.on_gui_click,function(event)
  local index = event.player_index
  if event.element.name == "mode" then
    if global.hoverboard[index].active == false then
      global.hoverboard[index].active = true
    elseif global.hoverboard[index].active == true then
      global.hoverboard[index].active = false
    end
    UI.switchMode(global.hoverboard[index].active,index)
  end
end)
