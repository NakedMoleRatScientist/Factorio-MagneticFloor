data:extend({
  {
    type = "recipe",
    name = "copper-floor",
    enabled = "true",
    ingredients =
    {
      {"copper-plate",5},
      {"concrete", 1}

    },
    subgroup = "magnetic-floor",
    result = "copper-floor"
  },
  {
    type = "recipe",
    name = "copper-floor2",
    enabled = true,
    ingredients =
    {
      {"copper-plate",10},
      {"copper-floor",1}
    },
    subgroup = "magnetic-floor",
    result = "copper-floor2"
  },
  {
    type = "recipe",
    name = "copper-floor3",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"copper-floor2",2}
    },
    subgroup = "magnetic-floor",
    result = "copper-floor3"
  },
  {
    type = "recipe",
    name = "hoverboard",
    enabled = true,
    energy_required = 10,
    ingredients =
    {
      {"copper-plate", 1},
      {"battery", 1},
      {"steel-plate", 1},
    },
    subgroup = 'magnetic-equipment',
    result = "hoverboard"
  },
  {
    type = "recipe",
    name = "accelerator",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"battery", 5}
    },
    subgroup = "magnetic-floor",
    result = "accelerator"
  },
  {
    type = "recipe",
    name = "right",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"battery", 5}
    },
    subgroup = "magnetic-floor",
    result = "right"
  },
  {
    type = "recipe",
    name = "down",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"battery", 5}
    },
    subgroup = "magnetic-floor",
    result = "down"
  },
  {
    type = "recipe",
    name = "left",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"battery", 5}
    },
    subgroup = "magnetic-floor",
    result = "left"
  },
  {
    type = "recipe",
    name = "up",
    enabled = true,
    ingredients =
    {
      {"copper-plate",20},
      {"battery", 5}
    },
    subgroup = "magnetic-floor",
    result = "up"
  }
})
