data:extend({
  {
    type = 'item',
    name = 'copper-floor',
    icon = "__base__/graphics/icons/copper-plate.png",
    flags = {"goes-to-quickbar"},
    place_as_tile =
    {
      result = "copper-floor",
      condition_size = 4,
      condition = { "water-tile" }
    },
    stack_size = 50,
    order = "b[concrete]"
  }

})
