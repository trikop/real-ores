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
    map_color = ore.map_color or {255, 255, 255},
    base_density = ore.base_density or 5,
    base_spots_per_km2 = ore.base_spots_per_km2 or 1,
    has_starting_area_placement = ore.has_starting_area_placement or false,
    regular_rq_factor_multiplier = ore.regular_rq_factor_multiplier or 1,
    starting_rq_factor_multiplier = ore.starting_rq_factor_multiplier or 1,
    icon = icon,
    filename = filename,
    mining_particle = mining_particle,
  }
end

local orelist = {
  make_ore{
    name = "dinite",
    fuel_value = "5MJ",
    has_starting_area_placement = true,
    results = {{type = "item", name = "dinite", amount_min = 1, amount_max = 1}},
  }
}
-- local orelist = {
--   {name = "dinite",          r = {{type = "item", name = "dinite", amount_min = 1, amount_max = 1}},          f_value = "5MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "eitelite",        r = {{type = "item", name = "eitelite", amount_min = 1, amount_max = 1}},        f_value = "1MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "humboldtine",     r = {{type = "item", name = "humboldtine", amount_min = 1, amount_max = 1}},     f_value = "1MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "kochsandorite",   r = {{type = "item", name = "kochsandorite", amount_min = 1, amount_max = 1}},   f_value = "0.5MJ",weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "lansfordite",     r = {{type = "item", name = "lansfordite", amount_min = 1, amount_max = 1}},     f_value = "0.5MJ",weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "niveolanite",     r = {{type = "item", name = "niveolanite", amount_min = 1, amount_max = 1}},     f_value = "0.5MJ",weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "refikite",        r = {{type = "item", name = "refikite", amount_min = 1, amount_max = 1}},        f_value = "4MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "wattevilleite",   r = {{type = "item", name = "wattevilleite", amount_min = 1, amount_max = 1}},   f_value = "5MJ",  weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0, 0},             f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/coal", filename= "__base__/graphics/entity/coal/coal", mining_particle = "coal-particle"},
--   {name = "azurite",         r = {{type = "item", name = "azurite", amount_min = 1, amount_max = 1}},         f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "bornite",         r = {{type = "item", name = "bornite", amount_min = 1, amount_max = 1}},         f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "chalcocite",      r = {{type = "item", name = "chalcocite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "chalcopyrite",    r = {{type = "item", name = "chalcopyrite", amount_min = 1, amount_max = 1}},    f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "chrysocolla",     r = {{type = "item", name = "chrysocolla", amount_min = 1, amount_max = 1}},     f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "covellite",       r = {{type = "item", name = "covellite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "cuprite",         r = {{type = "item", name = "cuprite", amount_min = 1, amount_max = 1}},         f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "dioptase",        r = {{type = "item", name = "dioptase", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "djurleite",       r = {{type = "item", name = "djurleite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "enargite",        r = {{type = "item", name = "enargite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "malachite",       r = {{type = "item", name = "malachite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "tennantite",      r = {{type = "item", name = "tennantite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "tenorite",        r = {{type = "item", name = "tenorite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "tetrahedite",     r = {{type = "item", name = "tetrahedite", amount_min = 1, amount_max = 1}},     f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.803, 0.388, 0.215}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/copper-ore", filename= "__base__/graphics/entity/copper-ore/copper-ore", mining_particle = "copper-ore-particle"},
--   {name = "akaganeite",      r = {{type = "item", name = "akaganeite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "ankerite",        r = {{type = "item", name = "ankerite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "cronstedtite",    r = {{type = "item", name = "cronstedtite", amount_min = 1, amount_max = 1}},    f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "ferrihydrite",    r = {{type = "item", name = "ferrihydrite", amount_min = 1, amount_max = 1}},    f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "goethite",        r = {{type = "item", name = "goethite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "greenalite",      r = {{type = "item", name = "greenalite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "greigite",        r = {{type = "item", name = "greigite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "grunerite",       r = {{type = "item", name = "grunerite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "hematite",        r = {{type = "item", name = "hematite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "lepidocrocite",   r = {{type = "item", name = "lepidocrocite", amount_min = 1, amount_max = 1}},   f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "macaulayite",     r = {{type = "item", name = "macaulayite", amount_min = 1, amount_max = 1}},     f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "magnesioferrite", r = {{type = "item", name = "magnesioferrite", amount_min = 1, amount_max = 1}}, f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "magnetite",       r = {{type = "item", name = "magnetite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "minnesotaite",    r = {{type = "item", name = "minnesotaite", amount_min = 1, amount_max = 1}},    f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "pyrite",          r = {{type = "item", name = "pyrite", amount_min = 1, amount_max = 1}},          f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "pyrrhotite",      r = {{type = "item", name = "pyrrhotite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "roaldite",        r = {{type = "item", name = "roaldite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "schwertmannite",  r = {{type = "item", name = "schwertmannite", amount_min = 1, amount_max = 1}},  f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "siderite",        r = {{type = "item", name = "siderite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "stilpnomelane",   r = {{type = "item", name = "stilpnomelane", amount_min = 1, amount_max = 1}},   f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "taenite",         r = {{type = "item", name = "taenite", amount_min = 1, amount_max = 1}},         f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "trevorite",       r = {{type = "item", name = "trevorite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "troilite",        r = {{type = "item", name = "troilite", amount_min = 1, amount_max = 1}},        f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "wustite",         r = {{type = "item", name = "wustite", amount_min = 1, amount_max = 1}},         f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0.415, 0.525, 0.580}, f_amount = nil, r_fluid = nil, base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/iron-ore", filename= "__base__/graphics/entity/iron-ore/iron-ore", mining_particle = "iron-ore-particle"},
--   {name = "brannerite",      r = {{type = "item", name = "brannerite", amount_min = 1, amount_max = 1}},      f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0.7, 0},           f_amount = 10, r_fluid = "sulfuric-acid", base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/uranium-ore", filename= "__base__/graphics/entity/uranium-ore/uranium-ore", mining_particle = nil},
--   {name = "coffinite",       r = {{type = "item", name = "coffinite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0.7, 0},           f_amount = 10, r_fluid = "sulfuric-acid", base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/uranium-ore", filename= "__base__/graphics/entity/uranium-ore/uranium-ore", mining_particle = nil},
--   {name = "davidite-ce",     r = {{type = "item", name = "davidite-ce", amount_min = 1, amount_max = 1}},     f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0.7, 0},           f_amount = 10, r_fluid = "sulfuric-acid", base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/uranium-ore", filename= "__base__/graphics/entity/uranium-ore/uranium-ore", mining_particle = nil},
--   {name = "davidite-la",     r = {{type = "item", name = "davidite-la", amount_min = 1, amount_max = 1}},     f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0.7, 0},           f_amount = 10, r_fluid = "sulfuric-acid", base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = false, regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/uranium-ore", filename= "__base__/graphics/entity/uranium-ore/uranium-ore", mining_particle = nil},
--   {name = "uraninite",       r = {{type = "item", name = "uraninite", amount_min = 1, amount_max = 1}},       f_value = nil,    weight = 4.5*kg, hardness = 1, m_time = 1, map_color = {0, 0.7, 0},           f_amount = 10, r_fluid = "sulfuric-acid", base_density = 5, base_spots_per_km2 = 1, has_starting_area_placement = true,  regular_rq_factor_multiplier = 1, starting_rq_factor_multiplier = 1, icon = "__base__/graphics/icons/uranium-ore", filename= "__base__/graphics/entity/uranium-ore/uranium-ore", mining_particle = nil}
-- }

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
