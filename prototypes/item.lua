data:extend({
  {
    type = 'item',
    name = 'copper-floor',
    icon = "__MagneticFloor__/graphics/icons/copper-floor-icon.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "copper-floor",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'copper-floor2',
    icon = "__MagneticFloor__/graphics/icons/copper-floor-icon_level2.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "copper-floor2",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'copper-floor3',
    icon = "__base__/graphics/icons/copper-plate.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "copper-floor3",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = "item",
    name = "hoverboard",
    icon = "__MagneticFloor__/graphics/icons/hoverboard-icon.png",
    placed_as_equipment_result = "hoverboard",
    flags = {"goes-to-main-inventory"},
    stack_size = 10
  },

})
