data:extend({
  {
    type = "movement-bonus-equipment",
    name = "hoverboard",
    sprite =
    {
      filename = "__MagneticFloor__/graphics/icons/hoverboard-icon.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "1kW",
    movement_bonus = 0.1
  },
})
