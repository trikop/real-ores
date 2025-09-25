local resource_autoplace = require("resource-autoplace");
local item_sounds = require('__base__.prototypes.item_sounds')

local function make_ore(ore)
  local icon, filename, mining_particle
  if ore.icon and ore.filename and ore.mining_particle then
    icon = ore.icon
    filename = ore.filename
    mining_particle = ore.mining_particle
  else
    if ore.type == "coal" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "coal-particle"
    elseif ore.type == "copper" then
      icon = "__base__/graphics/icons/copper-ore"
      filename = "__base__/graphics/entity/copper-ore/copper-ore"
      mining_particle = "copper-ore-particle"
    elseif ore.type == "iron" then
      icon = "__base__/graphics/icons/iron-ore"
      filename = "__base__/graphics/entity/iron-ore/iron-ore"
      mining_particle = "iron-ore-particle"
    elseif ore.type == "uranium" then
      icon = "__base__/graphics/icons/uranium-ore"
      filename = "__base__/graphics/entity/uranium-ore/uranium-ore"
      mining_particle = "uranium-ore-particle"
    else
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "coal-particle"
    end
  end
  return {
    name = ore.name,
    results = ore.results or {{type = "item", name = ore.name, amount_min = 1, amount_max = 1}},
    type = ore.type,
    fuel_value = ore.fuel_value or nil,
    weight = ore.weight or 4.5*kg,
    hardness = ore.hardness or 1,
    mining_time = ore.mining_time or 1,
    fluid_amount = ore.fluid_amount or nil,
    required_fluid = ore.required_fluid or nil,
    map_color = ore.map_color or {1, 1, 1},
    base_density = ore.base_density or 5,
    base_spots_per_km2 = ore.base_spots_per_km2 or 1,
    has_starting_area_placement = ore.start_placement or false,
    regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier or 1,
    starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier or 1,
    icon = icon,
    filename = filename,
    mining_particle = mining_particle,
  }
end

local define_ores = {
  {name = "dinite",          type = "coal",   fuel_value = "5MJ",   map_color = {0,0,0}, start_placement = true},
  {name = "eitelite",        type = "coal",   fuel_value = "1MJ",   map_color = {0,0,0}},
  {name = "humboldtine",     type = "coal",   fuel_value = "1MJ",   map_color = {0,0,0}, start_placement = true},
  {name = "kochsandorite",   type = "coal",   fuel_value = "0.5MJ", map_color = {0,0,0}},
  {name = "lansfordite",     type = "coal",   fuel_value = "0.5MJ", map_color = {0,0,0}},
  {name = "niveolanite",     type = "coal",   fuel_value = "0.5MJ", map_color = {0,0,0}},
  {name = "refikite",        type = "coal",   fuel_value = "4MJ",   map_color = {0,0,0}},
  {name = "wattevilleite",   type = "coal",   fuel_value = "5MJ",   map_color = {0,0,0}},
  {name = "azurite",         type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "bornite",         type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "chalcocite",      type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "chalcopyrite",    type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "chrysocolla",     type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "covellite",       type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "cuprite",         type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "dioptase",        type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "djurleite",       type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "enargite",        type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "malachite",       type = "copper", map_color = {0.803,0.388,0.215}, start_placement = true},
  {name = "tennantite",      type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "tenorite",        type = "copper", map_color = {0.803,0.388,0.215}, start_placement = true},
  {name = "tetrahedite",     type = "copper", map_color = {0.803,0.388,0.215}},
  {name = "akaganeite",      type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "ankerite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "cronstedtite",    type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "ferrihydrite",    type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "goethite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "greenalite",      type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "greigite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "grunerite",       type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "hematite",        type = "iron",   map_color = {0.415,0.525,0.580}, start_placement = true},
  {name = "lepidocrocite",   type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "macaulayite",     type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "magnesioferrite", type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "magnetite",       type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "minnesotaite",    type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "pyrite",          type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "pyrrhotite",      type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "roaldite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "schwertmannite",  type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "siderite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "stilpnomelane",   type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "taenite",         type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "trevorite",       type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "troilite",        type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "wustite",         type = "iron",   map_color = {0.415,0.525,0.580}},
  {name = "brannerite",      type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", map_color = {0,0.7,0}},
  {name = "coffinite",       type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", map_color = {0,0.7,0}},
  {name = "davidite-ce",     type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", map_color = {0,0.7,0}},
  {name = "davidite-la",     type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", map_color = {0,0.7,0}},
  {name = "uraninite",       type = "uranium", fluid_amount = 10, required_fluid = "sulfuric-acid", map_color = {0,0.7,0}, start_placement = true},
}



-- if mods.Krastorio2 then
--   local kr_ores = {
--     {name = "kr1test",             r = {{type = "item", name = "dinite", amount_min = 1, amount_max = 1}},          f_value = "5MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, start_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--     {name = "kr2test",             r = {{type = "item", name = "eitelite", amount_min = 1, amount_max = 1}},        f_value = "1MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, start_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   }
--   for _, ore in ipairs(kr_ores) do
--     table.insert(orelist, ore)
--   end
-- end

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
        order = "a-a-" .. ore.name
      },
      {
        type = "resource",
        name = ore.name,
        icon = ore.icon .. ".png",
        icon_size = 64,
        category="basic-solid",
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
        fuel_value = ore.fuel_value,
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
    })
end
