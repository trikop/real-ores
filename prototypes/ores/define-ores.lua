local resource_autoplace = require("resource-autoplace");
local item_sounds = require('__base__.prototypes.item_sounds')

local function is_enabled(name)
  for _, n in ipairs(name) do
    if data.raw.item[n] then
      return n
    end
  end
  return nil
end

local enabled = {
  iron_ore = "iron-ore",
  copper_ore = "copper-ore",
  uranium_ore = "uranium-ore",
}

enabled.carbon = is_enabled({"carbon", "pm-carbon", "coal"})
enabled.lead = is_enabled({"lead", "pm-lead"}) -- Maybe take inspo from PM's impure ore mechanic
enabled.sodium = is_enabled({"sodium", "pm-sodium"})
enabled.tin = is_enabled({"tin-ore", "pm-tin-ore"})
enabled.magnesium = is_enabled({"magnesium-ore", "pm-magnesium-ore"})

enabled.hydrogen = is_enabled({"hydrogen", "kr-hydrogen", "water"})
enabled.oxygen = is_enabled({"oxygen", "kr-oxygen"})

local function make_ore(ore)
  local icon, filename, mining_particle, mapcolor, ore_type
  if ore.icon and ore.filename and ore.mining_particle and ore.map_color and ore.ore_type then
    icon = ore.icon
    filename = ore.filename
    mining_particle = ore.mining_particle
    mapcolor = ore.map_color
    ore_type = ore.ore_type
  else
    if ore.type == "coal" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "coal-particle"
      mapcolor = {0,0,0}
      ore_type = "coal"
    elseif ore.type == "copper" then
      icon = "__base__/graphics/icons/copper-ore"
      filename = "__base__/graphics/entity/copper-ore/copper-ore"
      mining_particle = "copper-ore-particle"
      mapcolor = {0.803,0.388,0.215}
      ore_type = "copper-ore"
    elseif ore.type == "iron" then
      icon = "__base__/graphics/icons/iron-ore"
      filename = "__base__/graphics/entity/iron-ore/iron-ore"
      mining_particle = "iron-ore-particle"
      mapcolor = {0.415,0.525,0.580}
      ore_type = "iron-ore"
    elseif ore.type == "uranium" then
      icon = "__base__/graphics/icons/uranium-ore"
      filename = "__base__/graphics/entity/uranium-ore/uranium-ore"
      mining_particle = nil
      mapcolor = {0,0.7,0}
      ore_type = "uranium-ore"
    else
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "coal-particle"
      mapcolor = {1,1,1}
    end
  end
  return {
    name = ore.name,
    results = ore.results or {{type="item", name=ore.name, amount_min=1, amount_max=1}},
    type = ore.type,
    ore_type = ore_type or nil,
    fuel_value = ore.fuel_value or nil,
    weight = ore.weight or 4.5*kg,
    hardness = ore.hardness or 1,
    mining_time = ore.mining_time or 1,
    fluid_amount = ore.fluid_amount or nil,
    required_fluid = ore.required_fluid or nil,
    map_color = mapcolor or ore.map_color,
    base_density = ore.base_density or 5,
    base_spots_per_km2 = ore.base_spots_per_km2 or 1,
    has_starting_area_placement = ore.start_placement or false,
    regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier or 1,
    starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier or 1,
    icon = icon,
    filename = filename,
    mining_particle = mining_particle,
    processing_results = ore.processing_results or nil,

  }
end

local define_ores = {
  {
    name = "dinite",
    type = "coal",
    fuel_value = "5MJ",
    start_placement = true,
    processing_results = {
      {type="item", name="coal", amount = 1, probability=.8688},
      {type="fluid", name=enabled.hydrogen, amount = 1, probability=.1312}
    }
  },
}
  -- {name = "humboldtine",     type = "coal",   fuel_value = "1MJ",   , start_placement = true},
  -- {name = "kochsandorite",   type = "coal",   fuel_value = "0.5MJ", },
  -- {name = "lansfordite",     type = "coal",   fuel_value = "0.5MJ", },
  -- {name = "niveolanite",     type = "coal",   fuel_value = "0.5MJ", },
  -- {name = "refikite",        type = "coal",   fuel_value = "4MJ",   },
  -- {name = "wattevilleite",   type = "coal",   fuel_value = "5MJ",   },
  -- {
  --   name = "azurite",
  --   type = "copper",
  --   fuel_value = "0.05MJ",
  --   processing_results = {
  --     {type="item", name="copper-ore", amount=1, probability=.5531},
  --     {type="fluid", name="hydrogen", amount=1, probability=.0058},
  --     data.raw.item[enabled.carbon] and {type="item", name=enabled.carbon, amount=1, probability=.0697},
  --     {type="fluid", name="oxygen", amount=1, probability=.3714},
  --   }
  -- },
  -- {
  --   name = "bornite",
  --   type = "copper",
  --   start_placement = true,
  --   processing_results ={
  --     {type="item", name="iron-ore", amount=1, probability=.1113},
  --     {type="item", name="copper-ore", amount=1, probability=.6331},
  --     {type="item", name="sulfur", amount=1, probability=.2556},
  --   }
  -- {name = "chalcocite",      type = "copper",  },
  -- {name = "chalcopyrite",    type = "copper",  },
  -- {name = "chrysocolla",     type = "copper",  },
  -- {name = "covellite",       type = "copper",  },
  -- {name = "cuprite",         type = "copper",  },
  -- {name = "dioptase",        type = "copper",  },
  -- {name = "djurleite",       type = "copper",  },
  -- {name = "enargite",        type = "copper",  },
  -- {name = "malachite",       type = "copper",  } start_placement = true},
  -- {name = "tennantite",      type = "copper",  },
  -- {name = "tenorite",        type = "copper",  } start_placement = true},
  -- {name = "tetrahedite",     type = "copper",  },
  -- {name = "akaganeite",      type = "iron",    },
  -- {name = "ankerite",        type = "iron",    },
  -- {name = "cronstedtite",    type = "iron",    },
  -- {name = "ferrihydrite",    type = "iron",    },
  -- {name = "goethite",        type = "iron",    },
  -- {name = "greenalite",      type = "iron",    },
  -- {name = "greigite",        type = "iron",    },
  -- {name = "grunerite",       type = "iron",    },
  -- {name = "hematite",        type = "iron",    } start_placement = true},
  -- {name = "lepidocrocite",   type = "iron",    },
  -- {name = "macaulayite",     type = "iron",    },
  -- {name = "magnesioferrite", type = "iron",    },
  -- {name = "magnetite",       type = "iron",    },
  -- {name = "minnesotaite",    type = "iron",    },
  -- {name = "pyrite",          type = "iron",    },
  -- {name = "pyrrhotite",      type = "iron",    },
  -- {name = "roaldite",        type = "iron",    },
  -- {name = "schwertmannite",  type = "iron",    },
  -- {name = "siderite",        type = "iron",    },
  -- {name = "stilpnomelane",   type = "iron",    },
  -- {name = "taenite",         type = "iron",    },
  -- {name = "trevorite",       type = "iron",    },
  -- {name = "troilite",        type = "iron",    },
  -- {name = "wustite",         type = "iron",    },
  -- {name = "brannerite",      type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid"},
  -- {name = "coffinite",       type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid"},
  -- {name = "davidite-ce",     type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid"},
  -- {name = "davidite-la",     type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid"},
  -- {name = "uraninite",       type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", start_placement = true},

if enabled.sodium and enabled.magnesium then
  table.insert(define_ores, {
      name = "eitelite",
      type = "coal",
      fuel_value = "1MJ",
      start_placement = true,
      processing_results = {
        {type="item", name=enabled.sodium, amount=1, probability=.2416},
        {type="item", name=enabled.magnesium, amount=1, probability=.1277},
        {type="item", name=enabled.carbon, probability=.1262},
        {type="fluid", name=enabled.oxygen, amount=1, probability=.5044}
      }}) end



if mods.Krastorio2 then
  local kr_ores = {
    {name = "kr1test", type = "iron",   map_color = {0.415,0.525,0.580}},
    {name = "kr2test", type = "iron",   map_color = {0.415,0.525,0.580}},
  }
  for _, ore in ipairs(kr_ores) do
    table.insert(orelist, ore)
  end
end

-- Convert compact definitions into normalized ores using make_ore
local orelist = {}
for _, ore in ipairs(define_ores) do
  table.insert(orelist, make_ore(ore))
end


for _, ore in pairs(orelist) do
    data.raw.planet.nauvis.map_gen_settings.autoplace_controls[ore.name] = {}
    data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings[ore.name] = {}
    resource_autoplace.initialize_patch_set(ore.name, true)
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = ore.name,
        richness = true,
        order = "a-" .. ore.type .. "-" .. ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = ore.icon .. ".png",
        icon_size = 64,
        category= "basic-solid",
        flags = {"placeable-neutral"},
        order = "a-a-" .. ore.name,
        map_color = ore.map_color,
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
          hardness = ore.hardness,
          mining_particle = ore.mining_particle,
          mining_time = ore.mining_time,
          fluid_amount = ore.fluid_amount,
          required_fluid = ore.required_fluid,
          results = ore.results
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = ore.name,
            order = "a-a-" .. ore.name,
            base_density = ore.base_density,
            base_spots_per_km2 = ore.base_spots_per_km2,
            has_starting_area_placement = ore.has_starting_area_placement,
            regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier,
        },
        stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
        stages = {
          sheet = {
            filename = ore.filename .. ".png",
            priority = "extra-high",
            size = 128,
            frame_count = 8,
            variation_count = 8,
            scale = 0.5
          }
        }
      },
      {
        type = "item",
        name = ore.name,
        fuel_value = ore.fuel_value or nil,
        fuel_category = "chemical",
        icon_size = 64, icon_mipmaps = 4, 
        icon = ore.icon .. ".png",
        pictures = {
          {filename= ore.icon .. ".png", size=64, scale=0.5},
          {filename= ore.icon .. "-1.png", size=64, scale=0.5},
          {filename= ore.icon .. "-2.png", size=64, scale=0.5},
          {filename= ore.icon .. "-3.png", size=64, scale=0.5},
        },
        subgroup = "raw-resource",
        order = "a-a-" .. ore.name,
        stack_size = 50,
        weight = ore.weight,
        inventory_move_sound = item_sounds.wire_inventory_move,
        pick_sound = item_sounds.wire_inventory_pickup,
        drop_sound = item_sounds.wire_inventory_move,
      },
      {--Smelting
        type = "recipe",
        name = ore.name .. "-smelting",
        icon = ore.icon .. ".png",
        icon_size = 64,

        category = "smelting",
        enabled = true,
        energy_required = 1,
        ingredients = {{type="item", name=ore.name, amount=20}},
        results = {{type="item", name=ore.ore_type, amount=1}}, --Gets the ore type for smelting
      },
      {--Processing
        type = "recipe",
        name = ore.name .. "-processing",
        icon = ore.icon .. ".png",
        icon_size = 64,
        
        category = ore.category or "chemistry",
        enabled = true,
        energy_required = 1,
        ingredients = {{type="item", name=ore.name, amount=1}},
        results = ore.processing_results
      }

    })
end