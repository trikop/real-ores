local resource_autoplace = require("resource-autoplace");
local noise = require('noise');

data:extend({
  {
    type = "autoplace-control",
    category = "resource",
    name = "tenorite",
    richness = true,
    order = "o-b"
  },
  {
    type = "noise-layer",
    name = "tenorite"
  },
  {
    type = "resource",
    name = "tenorite",
    icon = "__base__/graphics/icons/copper-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="a-b-b",
    map_color = {r=0, g=0, b=0},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      hardness = 2,
      mining_particle = "copper-ore-particle",
      mining_time = 1,
      results = 
      {
        {type="item", name="copper-ore", amount=1, probability=.7989},
        {type="fluid", name="oxygen", amount=1, probability=.2011},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "tenorite",
      order = "t-r",
      base_density = 5,
      base_spots_per_km2 = 1,
      has_starting_area_placement = true,
      regular_rq_factor_multiplier = 1,
      starting_rq_factor_multiplier = 1,
    },

    stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
        stages =
        {
          sheet =
          {
      filename = "__base__/graphics/entity/copper-ore/copper-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__base__/graphics/entity/copper-ore/hr-copper-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
  },
  {
    type = "item",
    name = "tenorite",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/copper-ore.png",
    pictures = {
      {filename="__base__/graphics/icons/copper-ore.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/copper-ore-1.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/copper-ore-2.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/copper-ore-3.png", size=64, scale=0.125},
    },
    subgroup = "raw-resource",
    order = "t-t-a",
    stack_size = 20
  },
})