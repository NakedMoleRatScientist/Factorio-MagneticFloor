


function findDirectiveEntities(surface,position)
  local entities = {"accelerator_charger","up","right","down","left"}
  local list = {"left","down","up","right","accelerator_charger"}
  for _, name in ipairs(entities) do
    local target = surface.find_entity(name,position)
    if target ~= nil then
      return target
    end
  end
  return nil
end
