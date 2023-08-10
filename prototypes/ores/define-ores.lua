local resource_autoplace = require("resource-autoplace");
-- local noise = require('noise');
local oreListCoal = {
    {name = "dinite",           fuel_value = "5MJ",   hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "dinite", amount_min = 1, amount_max = 1}},            base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "eitelite",         fuel_value = "1MJ",   hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "eitelite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "humboldtine",      fuel_value = "1MJ",   hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "humboldtine", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "kochsandorite",    fuel_value = "0.5MJ", hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "kochsandorite", amount_min = 1, amount_max = 1}},     base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "lansfordite",      fuel_value = "0.5MJ", hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "lansfordite", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "niveolanite",      fuel_value = "0.5MJ", hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "niveolanite", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "refikite",         fuel_value = "4MJ",   hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "refikite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    -- {name = "wattevilleite",    fuel_value = "5MJ", hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "wattevilleite", amount_min = 1, amount_max = 1}},     base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
}
local oreListCopper = {
    {name = "azurite",          hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "azurite", amount_min = 1, amount_max = 1}},           base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "bornite",          hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "bornite", amount_min = 1, amount_max = 1}},           base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "chalcocite",       hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "chalcocite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "chalcopyrite",     hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "chalcopyrite", amount_min = 1, amount_max = 1}},      base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "chrysocolla",      hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "chrysocolla", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "covellite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "covellite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "cuprite",          hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "cuprite", amount_min = 1, amount_max = 1}},           base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "dioptase",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "dioptase", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "djurleite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "djurleite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "enargite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "enargite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "malachite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "malachite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "tennantite",       hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "tennantite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "tenorite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "tenorite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "tetrahedite",      hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "tetrahedite", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
}


local oreListIron = {
    {name = "akaganeite",       hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "akaganeite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "ankerite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "ankerite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "cronstedtite",     hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "cronstedtite", amount_min = 1, amount_max = 1}},      base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "ferrihydrite",     hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "ferrihydrite", amount_min = 1, amount_max = 1}},      base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "goethite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "goethite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "greenalite",       hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "greenalite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "greigite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "greigite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "grunerite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "grunerite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "hematite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "hematite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "lepidocrocite",    hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "lepidocrocite", amount_min = 1, amount_max = 1}},     base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "macaulayite",      hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "macaulayite", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "magnesioferrite",  hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "magnesioferrite", amount_min = 1, amount_max = 1}},   base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "magnetite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "magnetite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "minnesotaite",     hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "minnesotaite", amount_min = 1, amount_max = 1}},      base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "pyrite",           hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "pyrite", amount_min = 1, amount_max = 1}},            base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "pyrrhotite",       hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "pyrrhotite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "roaldite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "roaldite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "schwertmannite",   hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "schwertmannite", amount_min = 1, amount_max = 1}},    base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "siderite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "siderite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "stilpnomelane",    hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "stilpnomelane", amount_min = 1, amount_max = 1}},     base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "taenite",          hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "taenite", amount_min = 1, amount_max = 1}},           base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "trevorite",        hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "trevorite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "troilite",         hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "troilite", amount_min = 1, amount_max = 1}},          base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "wustite",          hardness = 1, mining_time = 2, fluid_amount = {}, required_fluid = {}, results = {{type = "item", name = "wustite", amount_min = 1, amount_max = 1}},           base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
}
local oreListUranium = {
    {name = "brannerite",       hardness = 1, mining_time = 2, fluid_amount = 1, required_fluid = "sulfuric-acid", results = {{type = "item", name = "brannerite", amount_min = 1, amount_max = 1}},        base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "coffinite",        hardness = 1, mining_time = 2, fluid_amount = 1, required_fluid = "sulfuric-acid", results = {{type = "item", name = "coffinite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "davidite-ce",      hardness = 1, mining_time = 2, fluid_amount = 1, required_fluid = "sulfuric-acid", results = {{type = "item", name = "davidite-ce", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "davidite-la",      hardness = 1, mining_time = 2, fluid_amount = 1, required_fluid = "sulfuric-acid", results = {{type = "item", name = "davidite-la", amount_min = 1, amount_max = 1}},       base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1},
    {name = "uraninite",        hardness = 1, mining_time = 2, fluid_amount = 1, required_fluid = "sulfuric-acid", results = {{type = "item", name = "uraninite", amount_min = 1, amount_max = 1}},         base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1}
}
local iconCoal = {}
local filenameCoal = {}
local filenameCoalHR = {}
local iconCopper = {}
local filenameCopper = {}
local filenameCopperHR = {}
local iconIron = {}
local filenameIron = {}
local filenameIronHR = {}
local iconUranium = {}
local filenameUranium = {}
local filenameUraniumHR = {}
if mods.base then
    iconCoal = "__base__/graphics/icons/coal.png"
    filenameCoal= "__base__/graphics/entity/coal/coal.png"
    filenameCoalHR = "__base__/graphics/entity/coal/hr-coal.png"
    iconCopper = "__base__/graphics/icons/copper-ore.png"
    filenameCopper = "__base__/graphics/entity/copper-ore/copper-ore.png"
    filenameCopperHR = "__base__/graphics/entity/copper-ore/hr-copper-ore.png"
    iconIron = "__base__/graphics/icons/iron-ore.png"
    filenameIron = "__base__/graphics/entity/iron-ore/iron-ore.png"
    filenameIronHR = "__base__/graphics/entity/iron-ore/hr-iron-ore.png"
    iconUranium = "__base__/graphics/icons/uranium-ore.png"
    filenameUranium = "__base__/graphics/entity/uranium-ore/uranium-ore.png"
    filenameUraniumHR = "__base__/graphics/entity/uranium-ore/hr-uranium-ore.png"

    
else

end

for _, ore in pairs(oreListCoal) do
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = ore.name,
        richness = true,
        order = "b-c-" .. ore.name
      },
      {
        type = "noise-layer",
        name = ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = iconCoal,
        icon_size = 64,
        flags = {"placeable-neutral"},
        order = "b-c-" .. ore.name,
        map_color = {0, 0, 0},
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
          hardness = ore.hardness,
          mining_time = ore.mining_time,
        --   fluid_amount = ore.fluid_amount,
        --   required_fluid = ore.required_fluid,
          results = ore.results
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = ore.name,
            order = "b-c-" .. ore.name,
            base_density = ore.base_density,
            base_spots_per_km2 = ore.base_spots_per_km2,
            has_starting_area_placement = ore.has_starting_area_placement,
            regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier,
        },
        stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
        stages = {
          sheet = {
            filename = filenameCoal,
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = filenameCoalHR,
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
        name = ore.name,
        fuel_value = ore.fuel_value,
        fuel_category = "chemical",
        icon_size = 64,
        icon_mipmaps = 4,
        icon = iconCoal,
        pictures = {
          {filename="__base__/graphics/icons/coal.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/coal-1.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/coal-2.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/coal-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "b-c-" .. ore.name,
        stack_size = 20
      },
    })
end

for _, ore in pairs(oreListCopper) do
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = ore.name,
        richness = true,
        order = "b-b-" .. ore.name
      },
      {
        type = "noise-layer",
        name = ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = iconCopper,
        icon_size = 64,
        flags = {"placeable-neutral"},
        order = "b-b-" .. ore.name,
        map_color = {0.803, 0.388, 0.215},
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
          hardness = ore.hardness,
          mining_time = ore.mining_time,
        --   fluid_amount = ore.fluid_amount,
        --   required_fluid = ore.required_fluid,
          results = ore.results
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = ore.name,
            order = "b-b-" .. ore.name,
            base_density = ore.base_density,
            base_spots_per_km2 = ore.base_spots_per_km2,
            has_starting_area_placement = ore.has_starting_area_placement,
            regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier,
        },
        stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
        stages = {
          sheet = {
            filename = filenameCopper,
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = filenameCopperHR,
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
        name = ore.name,
        icon_size = 64,
        icon_mipmaps = 4,
        icon = iconCopper,
        pictures = {
          {filename="__base__/graphics/icons/copper-ore.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/copper-ore-1.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/copper-ore-2.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/copper-ore-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "b-b-" .. ore.name,
        stack_size = 20
      },
    })
end

for _, ore in pairs(oreListIron) do
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = ore.name,
        richness = true,
        order = "b-a-" .. ore.name
      },
      {
        type = "noise-layer",
        name = ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = iconIron,
        icon_size = 64,
        flags = {"placeable-neutral"},
        order = "b-a-" .. ore.name,
        map_color = {0.415, 0.525, 0.580},
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
          hardness = ore.hardness,
          mining_time = ore.mining_time,
        --   fluid_amount = ore.fluid_amount,
        --   required_fluid = ore.required_fluid,
          results = ore.results
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = ore.name,
            order = "b-a-" .. ore.name,
            base_density = ore.base_density,
            base_spots_per_km2 = ore.base_spots_per_km2,
            has_starting_area_placement = ore.has_starting_area_placement,
            regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier,
        },
        stage_counts = {15000, 10000, 5000, 3000, 1500, 500, 150, 80},
        stages = {
          sheet = {
            filename = filenameIron,
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = filenameIronHR,
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
        name = ore.name,
        icon_size = 64,
        icon_mipmaps = 4,
        icon = iconIron,
        pictures = {
          {filename="__base__/graphics/icons/iron-ore.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/iron-ore-1.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/iron-ore-2.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/iron-ore-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "b-a-" .. ore.name,
        stack_size = 20
      },
    })
end
for _, ore in pairs(oreListUranium) do
    data:extend({
      {
        type = "autoplace-control",
        category = "resource",
        name = ore.name,
        richness = true,
        order = "c-" .. ore.name,
      },
      {
        type = "noise-layer",
        name = ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = iconUranium,
        icon_size = 64,
        flags = {"placeable-neutral"},
        order = "c-" .. ore.name,
        map_color = {0.690, 0.611, 0.427},
        tree_removal_probability = 0.7,
        tree_removal_max_distance = 32 * 32,
        minable = {
          hardness = ore.hardness,
          mining_time = ore.mining_time,
          fluid_amount = ore.fluid_amount,
          required_fluid = ore.required_fluid,
          results = ore.results
        },
        collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
        selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
        autoplace = resource_autoplace.resource_autoplace_settings{
            name = ore.name,
            order = "c-" .. ore.name,
            base_density = ore.base_density,
            base_spots_per_km2 = ore.base_spots_per_km2,
            has_starting_area_placement = ore.has_starting_area_placement,
            regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier,
            starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier,
        },
        stage_counts = {10000, 6330, 3670, 1930, 870, 270, 100, 50},
        stages = {
          sheet = {
            filename = filenameUranium,
            priority = "extra-high",
            size = 64,
            frame_count = 8,
            variation_count = 8,
            hr_version = {
                filename = filenameUraniumHR,
                priority = "extra-high",
                size = 128,
                frame_count = 8,
                variation_count = 8,
                scale = 0.5
                }
            }
        },
        stages_effect = {
        sheet = {
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
        effect_animation_period = 5,
        effect_animation_period_deviation = 1,
        effect_darkness_multiplier = 3.6,
        min_effect_alpha = 0.2,
        max_effect_alpha = 0.3,
        mining_visualisation_tint = {r = 0.814, g = 1.000, b = 0.499, a = 1.000}, -- #cfff7fff
      },
      {
        type = "item",
        name = ore.name,
        icon_size = 64,
        icon_mipmaps = 4,
        icon = iconUranium,
        pictures = {
          {filename="__base__/graphics/icons/uranium-ore.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/uranium-ore-1.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/uranium-ore-2.png", size=64, scale=0.125},
          {filename="__base__/graphics/icons/uranium-ore-3.png", size=64, scale=0.125},
        },
        subgroup = "raw-resource",
        order = "c-" .. ore.name,
        stack_size = 20
      },
    })
end