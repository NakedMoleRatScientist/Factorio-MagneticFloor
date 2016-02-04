data:extend({
  {
    type = "technology",
    name = "copper-floor",
    icon = "__base__/graphics/icons/copper-plate.png",
    prerequisites =
    {
      "concrete",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "copper-floor",

      }
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1",1},
        {"science-pack-2",1}
      }
    },
    order = "[c]"
  },
  {
    type = "technology",
    name = "hoverboard",
    icon = "__MagneticFloor__/graphics/icons/hoverboard-icon.png",
    prerequisites =
    {
      "copper-floor",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "hoverboard",

      }
    },
    unit =
    {
      count = 20,
      time = 30,
      ingredients =
      {
        {"science-pack-1",1},
        {"science-pack-2",1}
      }
    },
    order = "[h]"
  }
})
