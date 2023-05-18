local resource_autoplace = require("resource-autoplace");
local noise = require('noise');

data:extend({
  {
    type = "autoplace-control",
    category = "resource",
    name = "Humboldtine",
    richness = true,
    order = "o-d"
  },
  {
    type = "noise-layer",
    name = "Humboldtine"
  },
  {
    type = "resource",
    name = "Humboldtine",
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
        {type="item", name="iron-ore", amount=1, probability=.3104},
        {type="fluid", name="hydrogen", amount=1, probability=.0224},
        {type="item", name="coal", amount=1, probability=.1335},
        {type="fluid", name="oxygen", amount=1, probability=.5336},
      }
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},

    autoplace = resource_autoplace.resource_autoplace_settings{
      name = "Humboldtine",
      order = "t-r",
      base_density = 5,
      base_spots_per_km2 = 0.4,
      has_starting_area_placement = false,
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
})