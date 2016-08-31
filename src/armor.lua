function getArmor(index)
  local armor = game.players[index].get_inventory(defines.inventory.player_armor)[1]
  if armor ~= nil and armor.valid_for_read == true then
    return armor
  end
  return false
end

script.on_event(defines.events.on_player_armor_inventory_changed, function(event)
  local index = event.player_index
  local armor = getArmor(index)
  if armor ~= false then
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
