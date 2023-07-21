local sounds = require("__base__/prototypes/entity/sounds")

local fuel = {"chemical"}

local burner_ore_crusher_ingredients = {{ "iron-plate", 5 }, { "stone", 15 }}
local electric_ore_crusher_ingredients = {{ "steel-plate", 15 }, { "iron-plate", 15 }, { "stone", 15 }}

if mods["aai-industry"] then 
  table.insert(fuel, "processed-chemical") 
end
if mods.Krastorio2 then 
  table.insert(fuel, "vehicle-fuel") 
end

data:extend({
  {type = "recipe-category", name = "crushing"},
  {type = "item-subgroup", name = "crushing-machines", group = "production"},
  {type = "item-subgroup", name = "crushing", group = "intermediate-products"},
  {
    type = "assembling-machine",
    name = "burner-ore-crusher",
    fast_replaceable_group = "crusher",
    next_upgrade = "electric-ore-crusher",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "burner-ore-crusher"},
    max_health = 100,
    corpse = "medium-small-remnants",
    crafting_categories = {"crushing"},
    energy_usage = "680kW",
    crafting_speed = 2,
    energy_source = {
      type = "burner",
      fuel_categories = fuel,
      effectivity = 1,
      emissions_per_minute = 30,
      fuel_inventory_size = 1,
      burnt_inventory_size = 1,
    },
    working_sound = {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
          priority="high",
          width = 108,
          height = 114,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 2),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
            priority="high",
            width = 214,
            height = 226,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
          priority="high",
          width = 95,
          height = 83,
          frame_count = 1,
          line_length = 1,
          repeat_count = 32,
          draw_as_shadow = true,
          shift = util.by_pixel(8.5, 5.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
            priority="high",
            width = 190,
            height = 165,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5),
            scale = 0.5
          }
        }
      }
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
  },
  {
    type = "item",
    name = "burner-ore-crusher",
    icon = "__base__/graphics/icons/assembling-machine-1.png",
    icon_size = 64,
    subgroup = "crushing-machines",
    order = "a[crusher]",
    place_result = "burner-ore-crusher",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "burner-ore-crusher",
    result = "burner-ore-crusher",
    enabled = true,
    ingredients = burner_ore_crusher_ingredients,
  },
  {
    type = "assembling-machine",
    name = "electric-ore-crusher",
    fast_replaceable_group = "crusher",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    icon_size = 64,
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "electric-ore-crusher"},
    max_health = 100,
    corpse = "medium-small-remnants",
    crafting_categories = {"crushing"},
    energy_usage = "500kW",
    drain = "20kW",
    crafting_speed = 2,
    energy_source = {
      type = "electric",
      usage_priority = "secondary-input",
      emissions_per_minute = 20,
    },
    module_specification = {
      module_slots = 3,
      module_info_icon_shift = {0, 0.8}
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    working_sound = {
      sound = { filename = "__base__/sound/electric-furnace.ogg" }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          hr_version =
          {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5
          }
        }
      }
    },
    open_sound = sounds.machine_open,
    close_sound = sounds.machine_close,
    vehicle_impact_sound = sounds.generic_impact,
  },
  {
    type = "item",
    name = "electric-ore-crusher",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    icon_size = 64,
    subgroup = "crushing-machines",
    order = "b[crusher]",
    place_result = "electric-ore-crusher",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "electric-ore-crusher",
    result = "electric-ore-crusher",
    enabled = true,
    ingredients = electric_ore_crusher_ingredients,
  },
})





-- -- advancedOreCrusherRecipe.name = "advanced-ore-crusher"


data:extend({
    {
      type = "technology",
      name = "electric-ore-crushing",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      prerequisites = {"automation-2", "steel-processing"},
      effects = {
        {
          type = "unlock-recipe",
          recipe = "electric-ore-crusher"
        }
      },
      unit = {
        count = 100,
        ingredients = {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
        },
        time = 30
      },
    },
    -- {
    --     type = "technology",
    --     name = "advanced-ore-crushing",
    --     icon = "__your-mod-name__/graphics/technology/advanced-ore-crushing.png",
    --     icon_size = 128,
    --     prerequisites = {"electric-ore-crushing", "advanced-electronics"},
    --     effects = {
    --       {
    --         type = "unlock-recipe",
    --         recipe = "advanced-ore-crusher"
    --       }
    --     },
    --     unit = {
    --       count = 200,
    --       ingredients = {
    --         {"automation-science-pack", 1},
    --         {"logistic-science-pack", 1},
    --         {"chemical-science-pack", 1}
    --       },
    --       time = 40
    --     },
    --   }
})