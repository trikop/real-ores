local resource_autoplace = require("resource-autoplace");
local noise = require('noise');



  data:extend({
    {
      type = "autoplace-control",
      category = "resource",
      name = "greenalite",
      richness = true,
      order = "o-a"
    },
    {
      type = "noise-layer",
      name = "greenalite"
    },
    {
      type = "resource",
      name = "greenalite",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      flags = {"placeable-neutral"},
      order="a-b-a",
      map_color = {r=0, g=0, b=0},
      tree_removal_probability = 0.7,
      tree_removal_max_distance = 32 * 32,
      minable =
      {
        hardness = 2,
        mining_particle = "iron-ore-particle",
        mining_time = 1.2,

        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.4414},
          {type="item", name="silicon", amount=1, probability=.1744},
          {type="fluid", name="hydrogen", amount=1, probability=.0094},
          {type="fluid", name="oxygen", amount=1, probability=.3748},
        }
      },
      collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
      selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

      autoplace = resource_autoplace.resource_autoplace_settings{
        name = "greenalite",
        order = "t-r",
        base_density = 5,
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
        filename = "__base__/graphics/entity/iron-ore/iron-ore.png",
        priority = "extra-high",
        size = 64,
        frame_count = 8,
        variation_count = 8,
        hr_version =
        {
        filename = "__base__/graphics/entity/iron-ore/hr-iron-ore.png",
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
      name = "greenalite",
      icon_size = 64,
      icon_mipmaps = 4,
      icon = "__base__/graphics/icons/iron-ore.png",
      pictures = {
        {filename="__base__/graphics/icons/iron-ore.png", size=64, scale=0.125},
        {filename="__base__/graphics/icons/iron-ore-1.png", size=64, scale=0.125},
        {filename="__base__/graphics/icons/iron-ore-2.png", size=64, scale=0.125},
        {filename="__base__/graphics/icons/iron-ore-3.png", size=64, scale=0.125},
      },
      subgroup = "raw-resource",
      order = "t-t-a",
      stack_size = 20
    },
  })