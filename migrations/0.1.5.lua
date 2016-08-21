


function findDirectiveEntities(surface,position)
  local entities = {"accelerator_charger","up","right","down","left"}
  for _, name in ipairs(entities) do
    local target = surface.find_entity(name,position)
    if target ~= nil then
      return target
    end
  end
  return nil
end
