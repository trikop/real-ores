local resource_autoplace = require("resource-autoplace")
local noise = require('noise');

local util = require("__real-ores__.data-util");

local fluid = {}

if mods.Krastorio2 or mods.bzchlorine then
  fluid = "chlorine"
else
  fluid = "water"
end

  data:extend({
    {
      type = "autoplace-control",
      category = "resource",
      name = "default-ore",
      richness = true,
      order = "b-e"
    },
    {
      type = "noise-layer",
      name = "default-ore"
    },
    {
      type = "resource",
      name = "default-ore",
      icon = "__real-ores__/graphics/icons/default-ore.png",
      icon_size = 64,
      flags = {"placeable-neutral"},
      order="a-b-a",
      map_color = {r=0.5, g=0.33, b=0.16},
      tree_removal_probability = 0.7,
      tree_removal_max_distance = 32 * 32,
      minable =
      {
        hardness = 2.25,
        mining_particle = "iron-ore-particle",
        mining_time = 0.45,
        fluid_amount = 3,
        required_fluid = fluid,
        results = 
        {
          {type="item", name="default-ore", amount=1, probability=.8129},
          {type="item", name="sulfur", amount=1, probability=.1871},
        }
      },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

      autoplace = resource_autoplace.resource_autoplace_settings{
        name = "default-ore",
        order = "b-z",
        base_density = 20000,
        base_spots_per_km2 = 1,
        has_starting_area_placement = false,
        regular_rq_factor_multiplier = 1,
        starting_rq_factor_multiplier = 1,
      },

      stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
          stages =
          {
            sheet =
            {
        filename = "__real-ores__/graphics/ores/default-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
        filename = "__real-ores__/graphics/ores/hr-default-ore.png",
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
        name = "default-ore",
        icon_size = 64,
        icon_mipmaps = 4,
        icon = "__real-ores__/graphics/icons/default-ore.png",
        pictures = {
          {filename="__real-ores__/graphics/icons/default-ore.png", size=64, scale=0.125},
          {filename="__real-ores__/graphics/icons/default-ore-1.png", size=64, scale=0.125},
          {filename="__real-ores__/graphics/icons/default-ore-2.png", size=64, scale=0.125},
          {filename="__real-ores__/graphics/icons/default-ore-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "t-c-a",
        stack_size = util.get_stack_size(50)
    },
  })