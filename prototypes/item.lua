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
    icon = "__MagneticFloor__/graphics/icons/copper-floor-icon_level3.png",
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
  {
    type = 'item',
    name = 'accelerator',
    icon = "__MagneticFloor__/graphics/directives/Accelerator.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "accelerator",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'right',
    icon = "__MagneticFloor__/graphics/directives/right.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "right",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'down',
    icon = "__MagneticFloor__/graphics/directives/down.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "down",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'left',
    icon = "__MagneticFloor__/graphics/directives/left.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "left",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
  {
    type = 'item',
    name = 'up',
    icon = "__MagneticFloor__/graphics/directives/up.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "up",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  },
})
