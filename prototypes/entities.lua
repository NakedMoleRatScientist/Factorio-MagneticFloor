data:extend({
  {
    type = "accumulator",
    name = "accelerator_charger",
    icon = "__base__/graphics/entity/accumulator/accumulator.png",
    flags = {},
    indestructible = true,
    max_health = 150,
    order = "a-a-a",
    corpse = "medium-remnants",
    collision_mask = {"water-tile"},
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{0.0, 0.0}, {1, 1}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "terciary",
      input_flow_limit = "300kW",
      output_flow_limit = "300kW"
    },
    picture =
    {
      filename = "__MagneticFloor__/graphics/transparent.png",
      priority = "extra-high",
      width = 32,
      height = 32,
      shift = {0.0, 0.0}
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_cooldown = 60,
    discharge_light = {intensity = 0.7, size = 7},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/accumulator-working.ogg",
        volume = 1
      },
      idle_sound = {
        filename = "__base__/sound/accumulator-idle.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 5
    },
  },
  {
    type = "tree",
    name = "dry-hairy-tree",
    icon = "__base__/graphics/icons/dry-hairy-tree.png",
    flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 1,
      result = "raw-wood",
      count = 2
    },
    emissions_per_tick = -0.0001,
    max_health = 20,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    subgroup = "trees",
    order = "a[tree]-b[dead-tree]",
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    autoplace = dead_trees_autoplace(0.5),
    pictures =
    {
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-01.png",
        width = 201,
        height= 242,
        shift = {1.9, -0.68}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-02.png",
        width = 307,
        height= 256,
        shift = {2.62, -0.68}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-03.png",
        width = 286,
        height= 240,
        shift = {0.56, -1.5}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-04.png",
        width = 291,
        height= 229,
        shift = {3.5, -2.0}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-05.png",
        width = 265,
        height= 264,
        shift = {3.2, -0.46}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-06.png",
        width = 312,
        height= 267,
        shift = {2.59, -1.34}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-07.png",
        width = 294,
        height= 213,
        shift = {3.37, -0.25}
      },
      {
        filename = "__base__/graphics/entity/tree/dry-hairy-tree/dry-hairy-tree-08.png",
        width = 284,
        height= 217,
        shift = {2.28, -1.25}
      }
    }
  }
})
