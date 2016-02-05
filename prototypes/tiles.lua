data:extend(
{
  {
    type = "tile",
    name = "copper-floor",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "concrete"},
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
      inner_corner =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-side.png",
        count = 8
      },
      u_transition =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-u.png",
        count = 8
      },
      o_transition =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-o.png",
        count = 1
      }
    },
    walking_sound =
    {
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
    },
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
  {
    type = "tile",
    name = "copper-floor2",
    needs_correction = false,
    minable = {hardness = 0.2, mining_time = 0.5, result = "concrete"},
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
      inner_corner =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-inner-corner.png",
        count = 8
      },
      outer_corner =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-outer-corner.png",
        count = 8
      },
      side =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-side.png",
        count = 8
      },
      u_transition =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-u.png",
        count = 8
      },
      o_transition =
      {
        picture = "__MagneticFloor__/graphics/copper-floor/concrete-o.png",
        count = 1
      }
    },
    walking_sound =
    {
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
    },
    map_color={r=100, g=100, b=100},
    ageing=0,
    vehicle_friction_modifier = concrete_vehicle_speed_modifier
  },
})
