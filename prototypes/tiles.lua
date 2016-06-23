local inner_corner_base =
{
  picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
  count = 8
}
local outer_corner_base =
{
  picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
  count = 8
}

local side_base =
{
  picture = "__base__/graphics/terrain/concrete/concrete-side.png",
  count = 8
}
local u_transition_base =
{
  picture = "__base__/graphics/terrain/concrete/concrete-u.png",
  count = 8
}
local o_transition_base =
{
  picture = "__base__/graphics/terrain/concrete/concrete-o.png",
  count = 1
}

local walking_sound_base = {
  {
    filename = "__base__/sound/walking/concrete-01.ogg",
    volume = 1.2
  },
  {
    filename = "__base__/sound/walking/concrete-02.ogg",
    volume = 1.2
  },
  {
    filename = "__base__/sound/walking/concrete-03.ogg",
    volume = 1.2
  },
  {
    filename = "__base__/sound/walking/concrete-04.ogg",
    volume = 1.2
  }
}

data:extend(
{
  {
    type = "tile",
    name = "copper-floor",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "copper-floor"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.5,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
      main =
      {
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete1.png",
          count = 16,
          size = 1
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete4.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
      u_transition = u_transition_base,
      o_transition = o_transition_base,
    },
    walking_sound = walking_sound_base,
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  {
    type = "tile",
    name = "copper-floor2",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "copper-floor2"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.7,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
      main =
      {
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete1_level2.png",
          count = 16,
          size = 1
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete2_level2.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete4_level2.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
      u_transition = u_transition_base,
      o_transition = o_transition_base,
    },
    walking_sound = walking_sound_base,
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  {
    type = "tile",
    name = "copper-floor3",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "copper-floor3"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    walking_speed_modifier = 1.9,
    layer = 61,
    decorative_removal_probability = 0.9,
    variants =
    {
      main =
      {
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete1_level3.png",
          count = 16,
          size = 1
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete2_level3.png",
          count = 4,
          size = 2,
          probability = 0.39,
        },
        {
          picture = "__MagneticFloor__/graphics/copper-floor/concrete4_level3.png",
          count = 4,
          size = 4,
          probability = 1,
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
      u_transition = u_transition_base,
      o_transition = o_transition_base,
    },
    walking_sound = walking_sound_base,
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  {
    type = "accumulator",
    name = "accelerator",
    icon = "__MagneticFloor__/graphics/directives/accelerator.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    max_health = 150,
    corpse = "medium-remnants",
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1, -1}, {1, 1}},
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
      filename = "__MagneticFloor__/graphics/directives/accelerator.png",
      priority = "extra-high",
      width = 124,
      height = 103,
      shift = {0.7, -0.2}
    },
    charge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
      width = 138,
      height = 135,
      line_length = 8,
      frame_count = 24,
      shift = {0.482, -0.638},
      animation_speed = 0.5
    },
    charge_cooldown = 30,
    charge_light = {intensity = 0.3, size = 7},
    discharge_animation =
    {
      filename = "__base__/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
      width = 147,
      height = 128,
      line_length = 8,
      frame_count = 24,
      shift = {0.395, -0.525},
      animation_speed = 0.5
    },
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
--[[  {
    type = "tile",
    name = "accelerator",
    variants =
    {
      main = {
        {
          picture = "__MagneticFloor__/graphics/directives/accelerator.png",
          count = 1,
          size = 1,
          probability = 1
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
    },
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    layer = 61,
    decorative_removal_probability = 0.9,
    map_color={r=100, g=100, b=100},
    ageing = 0,
  },]]--
  {
    type = "tile",
    name = "right",
    variants =
    {
      main = {
        {
          picture = "__MagneticFloor__/graphics/directives/right.png",
          count = 1,
          size = 1,
          probability = 1
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
    },
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    layer = 61,
    decorative_removal_probability = 0.9,
    map_color={r=100, g=100, b=100},
    ageing = 0,
  },
  {
    type = "tile",
    name = "left",
    variants =
    {
      main = {
        {
          picture = "__MagneticFloor__/graphics/directives/left.png",
          count = 1,
          size = 1,
          probability = 1
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
    },
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    layer = 61,
    decorative_removal_probability = 0.9,
    map_color={r=100, g=100, b=100},
    ageing = 0,
  },
  {
    type = "tile",
    name = "down",
    variants =
    {
      main = {
        {
          picture = "__MagneticFloor__/graphics/directives/down.png",
          count = 1,
          size = 1,
          probability = 1
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
    },
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    layer = 61,
    decorative_removal_probability = 0.9,
    map_color={r=100, g=100, b=100},
    ageing = 0,
  },
  {
    type = "tile",
    name = "up",
    variants =
    {
      main = {
        {
          picture = "__MagneticFloor__/graphics/directives/up.png",
          count = 1,
          size = 1,
          probability = 1
        },
      },
      inner_corner = inner_corner_base,
      outer_corner = outer_corner_base,
      side = side_base,
    },
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "accelerator"},
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    collision_mask = {"ground-tile"},
    layer = 61,
    decorative_removal_probability = 0.9,
    map_color={r=100, g=100, b=100},
    ageing = 0,
  }
})
