data:extend({
  {
      -- create new inventory tab and set icon
      type = "item-group",
      name = "MagneticFloor",
      order = "z",
      inventory_order = "z",
      icon = "__MagneticFloor__/graphics/icons/hoverboard-icon.png"
  },
  {
      -- row for flooring
      type = "item-subgroup",
      name = "magnetic-floor",
      group = "MagneticFloor",
      order = "a",
  },
  {
    type = 'item-subgroup',
    name = "magnetic-equipment",
    group = "MagneticFloor",
    order = 'b'
  }
})
