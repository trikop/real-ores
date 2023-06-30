local resource_autoplace = require("resource-autoplace");
local noise = require('noise');

local fluid = "sulfuric-acid"

data:extend({
  {
    type = "autoplace-control",
    category = "resource",
    name = "coffinite",
    richness = true,
    order = "o-e"
  },
  {
    type = "noise-layer",
    name = "coffinite"
  },
  {
    type = "resource",
    name = "coffinite",
    icon = "__base__/graphics/icons/uranium-ore.png",
    icon_size = 64,
    flags = {"placeable-neutral"},
    order="a-b-e",
    map_color = {r=0, g=0, b=0},
    tree_removal_probability = 0.7,
    tree_removal_max_distance = 32 * 32,
    minable =
    {
      hardness = 2,
      mining_particle = "iron-ore-particle",
      mining_time = 1,
      fluid_amount = 1,
      required_fluid = fluid,
      results = 
      {
        {type="item", name="coffinite", amount=1},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "coffinite",
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
      filename = "__base__/graphics/entity/uranium-ore/uranium-ore.png",
      priority = "extra-high",
      size = 64,
      frame_count = 8,
      variation_count = 8,
      hr_version =
      {
      filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore.png",
        priority = "extra-high",
        size = 128,
        frame_count = 8,
        variation_count = 8,
        scale = 0.5
      }
          }
    },
    stages_effect =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/uranium-ore/uranium-ore-glow.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 8,
        variation_count = 8,
        blend_mode = "additive",
        flags = {"light"},
        hr_version =
        {
          filename = "__base__/graphics/entity/uranium-ore/hr-uranium-ore-glow.png",
          priority = "extra-high",
          width = 128,
          height = 128,
          frame_count = 8,
          variation_count = 8,
          scale = 0.5,
          blend_mode = "additive",
          flags = {"light"}
        }
      }
    },
  },
  {
    type = "item",
    name = "coffinite",
    icon_size = 64,
    icon_mipmaps = 4,
    icon = "__base__/graphics/icons/uranium-ore.png",
    pictures = {
      {filename="__base__/graphics/icons/uranium-ore.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/uranium-ore-1.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/uranium-ore-2.png", size=64, scale=0.125},
      {filename="__base__/graphics/icons/uranium-ore-3.png", size=64, scale=0.125},
    },
    subgroup = "raw-resource",
    order = "t-t-a",
    stack_size = 20
  },
})
if data.raw.item["silicon"] then
  data:extend({
    {
        type = "recipe",
        name = "coffinite-smelting-2",
        icon = "__base__/graphics/icons/uranium-ore.png",
        icon_size = 64,
        main_product = "uranium-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"coffinite", 1}}, 
        results = 
        {
          {type="item", name="uranium-ore", amount=1, probability=.7263},
          {type="item", name="silicon", amount=1, probability=.0771},
          {type="fluid", name="hydrogen", amount=1, probability=.0012},
          {type="fluid", name="oxygen", amount=1, probability=.1953},
        }
    }
  })
end