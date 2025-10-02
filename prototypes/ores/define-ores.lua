local resource_autoplace = require("resource-autoplace");
local item_sounds = require('__base__.prototypes.item_sounds')

local function is_enabled(name)
  for _, n in ipairs(name) do
    if data.raw.item[n] or data.raw.fluid[n] then -- add for fluid too
      return n
    end
  end
  return nil
end

local e = {
  iron = "iron-ore",
  copper = "copper-ore",
  uranium = "uranium-ore",
}

e.carbon = is_enabled({"carbon", "pm-carbon", "coal"})
e.sulfur = is_enabled({"sulfur"})

e.lead = is_enabled({"lead", "pm-lead"}) -- Maybe take inspo from PM's impure ore mechanic
e.sodium = is_enabled({"sodium", "pm-sodium"})
e.tin = is_enabled({"tin-ore", "pm-tin-ore"})
e.magnesium = is_enabled({"magnesium-ore", "pm-magnesium-ore"})
e.silicon = is_enabled({"silicon", "pm-silicon"})
e.titanium = is_enabled({"titanium-ore", "pm-titanium-ore"})
e.nickel = is_enabled({"nickel-ore", "pm-nickel-ore"})
e.aluminum = is_enabled({"aluminum-ore", "pm-aluminum-ore", "bauxite"})

e.calcium = is_enabled({"calcium-ore", "pm-calcium-ore"})
e.yttrium = is_enabled({"yttrium", "pm-yttrium"})
e.lanthanum = is_enabled({"lanthanum", "pm-lanthanum"})
e.cerium = is_enabled({"cerium", "pm-cerium"})
e.antimony = is_enabled({"antimony", "pm-antimony"})
e.arsenic = is_enabled({"arsenic", "pm-arsenic"})
e.sodium = is_enabled({"sodium", "pm-sodium"})
e.beryllium = is_enabled({"beryllium", "pm-beryllium"})


e.hydrogen = is_enabled({"hydrogen", "kr-hydrogen", "water"})
e.oxygen = is_enabled({"oxygen", "kr-oxygen"})

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
      {type="item", name=e.carbon, amount = 1, probability=.8688},
      {type="fluid", name=e.hydrogen, amount = 1, probability=.1312}
    }},
  {
    name = "humboldtine",
    type = "coal",
    fuel_value = "1MJ",
    start_placement = true,
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.7985},
      {type="item", name=e.sulfur, amount=1, probability=.2015},
    }},
  {
    name = "refikite",
    type = "coal",
    fuel_value = "4MJ",
    processing_results = {
      {type="item", name=e.carbon, amount=1, probability=.7890},
      {type="fluid", name=e.hydrogen, amount=1, probability=.1059},
      {type="fluid", name=e.oxygen, amount=1, probability=.1051},
    }},
  {
    name = "azurite",
    type = "copper",
    fuel_value = "0.05MJ",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.5531},
      {type="item", name=e.carbon, amount=1, probability=.0697},
      {type="fluid", name=e.oxygen, amount=1, probability=.3714},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0058},
    }},
  {
    name = "bornite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.6331},
      {type="item", name=e.sulfur, amount=1, probability=.2556},
      {type="item", name=e.iron, amount=1, probability=.1113},
    }},

  {
    name = "chalcocite",
    type = "copper",
    start_placement = true,
    processing_results ={
      {type="item", name=e.copper, amount=1, probability=.7985},
      {type="item", name=e.sulfur, amount=1, probability=.2015},
    }},
  {
    name = "chalcopyrite",
    type = "copper",
    processing_results = {
      {type="item", name=e.sulfur, amount=1, probability=.3494},
      {type="item", name=e.copper, amount=1, probability=.3463},
      {type="item", name=e.iron, amount=1, probability=.3043},
    }},
  {
    name = "covellite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.6646},
      {type="item", name=e.sulfur, amount=1, probability=.3354},
    }},
  {
    name = "cuprite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.8882},
      {type="fluid", name=e.oxygen, amount=1, probability=.1118},
    }},

  {
    name = "djurleite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.7934},
      {type="item", name=e.sulfur, amount=1, probability=.2066},
    }},
  {
    name = "malachite",
    type = "copper",
    fuel_value = "0.05MJ",
    start_placement = true,
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.5748},
      {type="item", name=e.carbon, amount=1, probability=.0543},
      {type="fluid", name=e.oxygen, amount=1, probability=.3618},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0091},
    }},
  {
    name = "tenorite",
    type = "copper",
    start_placement = true,
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.7989},
      {type="fluid", name=e.oxygen, amount=1, probability=.2011},
    }},
  {
    name = "cronstedtite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5592},
      {type="item", name=e.sulfur, amount=1, probability=.0703},
      {type="fluid", name=e.oxygen, amount=1, probability=.3604},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0101},
    }},
  {
    name = "ferrihydrite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6621},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0060},
      {type="fluid", name=e.oxygen, amount=1, probability=.3319},
    }},
  {
    name = "goethite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6285},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0113},
      {type="fluid", name=e.oxygen, amount=1, probability=.3601},
    }},
  {
    name = "greigite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5664},
      {type="item", name=e.sulfur, amount=1, probability=.4336},
    }},

  {
    name = "hematite",
    type = "iron",
    start_placement = true,
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6994},
      {type="fluid", name=e.oxygen, amount=1, probability=.3006},
    }},
  {
    name = "lepidocrocite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6285},
      {type="fluid", name=e.oxygen, amount=1, probability=.3601},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0113},
    }},
  {
    name = "magnetite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.7236},
      {type="fluid", name=e.oxygen, amount=1, probability=.2764},
    }},

  {
    name = "pyrite",
    type = "iron",
    processing_results = {
      {type="item", name=e.sulfur, amount=1, probability=.5345},
      {type="item", name=e.iron, amount=1, probability=.4655},
    }},
  {
    name = "pyrrhotite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6233},
      {type="item", name=e.sulfur, amount=1, probability=.3767},
    }},
  {
    name = "schwertmannite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5781},
      {type="item", name=e.sulfur, amount=1, probability=.0415},
      {type="fluid", name=e.oxygen, amount=1, probability=.3726},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0078},
    }},
  {
    name = "siderite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.4820},
      {type="item", name=e.carbon, amount=1, probability=.1037},
      {type="fluid", name=e.oxygen, amount=1, probability=.4143},
    }},
  {
    name = "troilite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.6353},
      {type="item", name=e.sulfur, amount=1, probability=.3647},
    }},
  {
    name = "wustite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.7773},
      {type="fluid", name=e.oxygen, amount=1, probability=.2227},
    }},
  {
    name = "uraninite",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    start_placement = true,
    processing_results = {
        {type="item", name=e.uranium, amount=1, probability=.8815},
        {type="fluid", name=e.oxygen, amount=1, probability=.1185},
      }},
  }

if e.sodium and e.magnesium then table.insert(define_ores, {
    name = "eitelite",
    type = "coal",
    fuel_value = "1MJ",
    start_placement = true,
    processing_results = {
      {type="item", name=e.sodium, amount=1, probability=.2416},
      {type="item", name=e.magnesium, amount=1, probability=.1277},
      {type="item", name=e.carbon, amount=1, probability=.1262},
      {type="fluid", name=e.oxygen, amount=1, probability=.5044}
    }}) end

if e.aluminum and e.calcium then table.insert(define_ores, {
    name = "kochsandorite",
    type = "coal",
    fuel_value = "0.5MJ",
    processing_results = {
      {type="item", name=e.aluminum, amount=1, probability=.1826},
      {type="item", name=e.calcium, amount=1, probability=.1221},
      {type="item", name=e.carbon, amount=1, probability=.0772},
      {type="fluid", name=e.oxygen, amount=1, probability=.5956},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0225},
    }}) end

if e.magnesium then table.insert(define_ores, {
    name = "lansfordite",
    type = "coal",
    fuel_value = "0.5MJ",
    processing_results = {
      {type="item", name=e.magnesium, amount=1, probability=.1394},
      {type="item", name=e.carbon, amount=1, probability=.0689},
      {type="fluid", name=e.oxygen, amount=1, probability=.7340},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0578},
    }}) end

if e.sodium and e.calcium and e.beryllium then table.insert(define_ores, {
    name = "niveolanite",
    type = "coal",
    fuel_value = "0.5MJ",
    processing_results = {
      {type="item", name=e.sodium, amount=1, probability=.1510},
      {type="item", name=e.carbon, amount=1, probability=.0840},
      {type="item", name=e.beryllium, amount=1, probability=.0617},
      {type="item", name=e.calcium, amount=1, probability=.0280},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0311},
      {type="fluid", name=e.oxygen, amount=1, probability=.6441},
    }}) end
if e.sodium and e.calcium then table.insert(define_ores, {
    name = "wattevilleite",
    type = "coal",
    fuel_value = "5MJ",
    processing_results = {
      {type="item", name=e.sulfur, amount=1, probability=.1831},
      {type="item", name=e.sodium, amount=1, probability=.1313},
      {type="item", name=e.calcium, amount=1, probability=.1144},
      {type="fluid", name=e.oxygen, amount=1, probability=.5482},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0230},
    }}) end
if e.silicon and e.aluminum then table.insert(define_ores, {
    name = "chrysocolla",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.3386},
      {type="item", name=e.silicon, amount=1, probability=.1710},
      {type="item", name=e.aluminum, amount=1, probability=.0205},
      {type="fluid", name=e.oxygen, amount=1, probability=.4506},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0192},
    }}) end
if e.silicon then table.insert(define_ores, {
    name = "dioptase",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.4031},
      {type="item", name=e.silicon, amount=1, probability=.1782},
      {type="fluid", name=e.oxygen, amount=1, probability=.4060},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0128},
    }}) end
if e.arsenic then table.insert(define_ores, {
    name = "enargite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.4841},
      {type="item", name=e.sulfur, amount=1, probability=.3257},
      {type="item", name=e.arsenic, amount=1, probability=.1902},
    }}) end
if e.arsenic then table.insert(define_ores, {
    name = "tennantite",
    type = "copper",
    results = {
      {type="item", name=e.copper, amount=1, probability=.4751},
      {type="item", name=e.sulfur, amount=1, probability=.2833},
      {type="item", name=e.arsenic, amount=1, probability=.2037},
      {type="item", name=e.iron, amount=1, probability=.0380},
    }}) end
if e.antimony then table.insert(define_ores, {
    name = "tetrahedite",
    type = "copper",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.3480},
      {type="item", name=e.antimony, amount=1, probability=.2964},
      {type="item", name=e.sulfur, amount=1, probability=.2537},
      {type="item", name=e.iron, amount=1, probability=.1020},
    }}) end
if e.nickel and e.chlorine then table.insert(define_ores, {
    name = "akaganeite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5575},
      {type="item", name=e.nickel, amount=1, probability=.0308},
      {type="fluid", name=e.oxygen, amount=1, probability=.3383},
      {type="fluid", name=e.chlorine, amount=1, probability=.0605},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0128},
    }}) end
if e.calcium and e.magnesium and e.manganese then table.insert(define_ores, {
    name = "ankerite",
    type = "iron",
    results = {
      {type="item", name=e.calcium, amount=1, probability=.1942},
      {type="item", name=e.iron, amount=1, probability=.1624},
      {type="item", name=e.carbon, amount=1, probability=.1164},
      {type="item", name=e.magnesium, amount=1, probability=.0353},
      {type="item", name=e.manganese, amount=1, probability=.0266},
      {type="fluid", name=e.oxygen, amount=1, probability=.4651},
    }}) end
if e.silicon then table.insert(define_ores, {
    name = "greenalite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.4414},
      {type="item", name=e.silicon, amount=1, probability=.1744},
      {type="fluid", name=e.oxygen, amount=1, probability=.3748},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0094},
    }}) end
if e.silicon then table.insert(define_ores, {
    name = "grunerite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.3903},
      {type="item", name=e.silicon, amount=1, probability=.2243},
      {type="fluid", name=e.oxygen, amount=1, probability=.3834},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0020},
    }}) end
if e.silicon and e.aluminum then table.insert(define_ores, {
    name = "macaulayite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5804},
      {type="item", name=e.silicon, amount=1, probability=.0531},
      {type="item", name=e.aluminum, amount=1, probability=.0255},
      {type="fluid", name=e.oxygen, amount=1, probability=.3401},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0010},
    }}) end
if e.magnesium then table.insert(define_ores, {
    name = "magnesioferrite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5585},
      {type="item", name=e.magnesium, amount=1, probability=.1215},
      {type="fluid", name=e.oxygen, amount=1, probability=.3200},
    }}) end
if e.silicon and e.magnesium then table.insert(define_ores, {
    name = "minnesotaite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.3048},
      {type="item", name=e.silicon, amount=1, probability=.2452},
      {type="item", name=e.magnesium, amount=1, probability=.0265},
      {type="fluid", name=e.oxygen, amount=1, probability=.4191},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0044},
    }}) end
if e.nickel and e.nitrogen then table.insert(define_ores, {
    name = "roaldite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.8918},
      {type="item", name=e.nickel, amount=1, probability=.0493},
      {type="fluid", name=e.nitrogen, amount=1, probability=.0589},
    }}) end
if e.silicon and e.aluminum and e.potassium and e.magnesium then table.insert(define_ores, {
    name = "stilpnomelane",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.2954},
      {type="item", name=e.silicon, amount=1, probability=.2251},
      {type="item", name=e.aluminum, amount=1, probability=.0433},
      {type="item", name=e.potassium, amount=1, probability=.0313},
      {type="item", name=e.magnesium, amount=1, probability=.0273},
      {type="fluid", name=e.oxygen, amount=1, probability=.3719},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0057},
    }}) end
if e.nickel then table.insert(define_ores, {
    name = "taenite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.7919},
      {type="item", name=e.nickel, amount=1, probability=.2081},
    }}) end
if e.nickel and e.magnesium and e.aluminum then table.insert(define_ores, {
    name = "trevorite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5516},
      {type="item", name=e.nickel, amount=1, probability=.1671},
      {type="item", name=e.magnesium, amount=1, probability=.0042},
      {type="item", name=e.aluminum, amount=1, probability=.0012},
      {type="fluid", name=e.oxygen, amount=1, probability=.2760},
    }}) end
if e.uranium and e.titanium and e.cerium and e.iron and e.calcium then table.insert(define_ores, {
    name = "brannerite",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    processing_results = {
      {type="item", name=e.uranium, amount=1, probability=.3354},
      {type="item", name=e.titanium, amount=1, probability=.2024},
      {type="item", name=e.cerium, amount=1, probability=.0790},
      {type="item", name=e.iron, amount=1, probability=.0787},
      {type="item", name=e.calcium, amount=1, probability=.0339},
      {type="fluid", name=e.oxygen, amount=1, probability=.2707},
    }}) end
if e.uranium and e.silicon then table.insert(define_ores, {
    name = "coffinite",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    processing_results = {
      {type="item", name=e.uranium, amount=1, probability=.7263},
      {type="item", name=e.silicon, amount=1, probability=.0771},
      {type="fluid", name=e.oxygen, amount=1, probability=.1953},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0012},
    }}) end
if e.titanium and e.cerium and e.yttrium and e.uranium and e.lanthanum then table.insert(define_ores, {
    name = "davidite-ce",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    processing_results = {
      {type="item", name=e.titanium, amount=1, probability=.3838},
      {type="item", name=e.iron, amount=1, probability=.1492},
      {type="item", name=e.cerium, amount=1, probability=.0562},
      {type="item", name=e.yttrium, amount=1, probability=.0356},
      {type="item", name=e.uranium, amount=1, probability=.0318},
      {type="item", name=e.lanthanum, amount=1, probability=.0186},
      {type="fluid", name=e.oxygen, amount=1, probability=.3249},
    }}) end
if e.titanium and e.lanthanum and e.yttrium and e.uranium and e.cerium and e.calcium then table.insert(define_ores, {
    name = "davidite-la",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    processing_results = {
      {type="item", name=e.titanium, amount=1, probability=.3859},
      {type="item", name=e.iron, amount=1, probability=.1501},
      {type="item", name=e.lanthanum, amount=1, probability=.0523},
      {type="item", name=e.yttrium, amount=1, probability=.0358},
      {type="item", name=e.uranium, amount=1, probability=.0320},
      {type="item", name=e.cerium, amount=1, probability=.0151},
      {type="item", name=e.calcium, amount=1, probability=.0022},
      {type="fluid", name=e.oxygen, amount=1, probability=.3267},
    }}) end

if mods.Krastorio2 then table.insert(define_ores, {
    {name = "kr1test", type = "iron",   map_color = {0.415,0.525,0.580}}}) end
if mods.Krastorio2 then table.insert(define_ores, {
    {name = "kr2test", type = "iron",   map_color = {0.415,0.525,0.580}}}) end


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