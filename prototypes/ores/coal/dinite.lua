local resource_autoplace = require("resource-autoplace");
local noise = require('noise');

data:extend({
  {
    type = "autoplace-control",
    category = "resource",
    name = "dinite",
    richness = true,
    order = "o-d"
  },
  {
    type = "noise-layer",
    name = "dinite"
  },
  {
    type = "resource",
    name = "dinite",
    icon = "__base__/graphics/icons/coal.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="a-b-d",
    map_color = {r=0, g=0, b=0},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      hardness = 2,
      mining_particle = "coal-particle",
      mining_time = 1,
      results = 
      {
        {type="item", name="dinite", amount=1},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "dinite",
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
      filename = "__base__/graphics/entity/coal/coal.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__base__/graphics/entity/coal/hr-coal.png",
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
    name = "dinite",
    fuel_value = "5MJ",
    fuel_category = "chemical",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/coal.png",
    pictures = {
      {filename="__base__/graphics/icons/coal.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/coal-1.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/coal-2.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/coal-3.png", size=64, scale=0.125},
    },
    subgroup = "raw-resource",
    order = "t-t-a",
    stack_size = 20
  },
})
data:extend({
  {
      type = "recipe",
      name = "dinite-smelting-2",
      icon = "__base__/graphics/icons/coal.png",
      icon_size = 64,
      main_product = "coal",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"dinite", 1}}, 
      results = 
      {
        {type="fluid", name="hydrogen", amount=1, probability=.1312},
        {type="item", name="coal", amount=1, probability=.8688},
      }
  }
})