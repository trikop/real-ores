local resource_autoplace = require("resource-autoplace");
local item_sounds = require('__base__.prototypes.item_sounds')

local function is_enabled(name)
  for _, n in ipairs(name) do
    if data.raw.item[n] or data.raw.fluid[n] then
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

e.carbon = is_enabled({"raw-coal", "carbon", "pm-carbon", "coal"})
e.sulfur = is_enabled({"sulfur"})

e.lead = is_enabled({"ore-lead", "lead-ore", "pm-lead-ore"}) -- Maybe take inspo from PM's impure ore mechanic
e.sodium = is_enabled({"sodium", "pm-sodium"})
e.tin = is_enabled({"ore-tin", "tin-ore", "pm-tin-ore"})
e.manganese = is_enabled({"manganese-ore", "pm-manganese-ore"})
e.bismuth = is_enabled({"bismuth-ore", "pm-bismuth-ore"})
e.magnesium = is_enabled({"magnesium-ore", "pm-magnesium-ore"})
e.silicon = is_enabled({"silicon", "pm-industrial-grade-silicon-ore"})
e.titanium = is_enabled({"ore-titanium", "titanium-ore", "pm-titanium-ore"})
e.nickel = is_enabled({"ore-nickel", "nickel-ore", "pm-nickel-ore"})
e.aluminum = is_enabled({"ore-aluminum", "aluminum-ore", "pm-aluminum-ore", "bauxite"})
e.gold = is_enabled({"gold-ore", "pm-gold-ore"})
e.silver = is_enabled({"silver-ore", "pm-silver-ore"})
e.tungsten = is_enabled({"tungsten-ore", "pm-tungsten-ore"})
e.cadmium = is_enabled({"cadmium-ore", "pm-cadmium-ore"})
e.chromium = is_enabled({"ore-chromium", "chromium-ore", "pm-chromium-ore"})
e.zinc = is_enabled({"ore-chromium", "chromium-ore", "pm-chromium-ore"})
e.osmium = is_enabled({"osmium-ore", "pm-osmium-ore"})
e.iridium = is_enabled({"iridium-ore", "pm-iridium-ore"})
e.ruthenium = is_enabled({"ruthenium-ore", "pm-ruthenium-ore"})
e.rhenium = is_enabled({"rhenium-ore", "pm-rhenium-ore"})
e.rhodium = is_enabled({"rhodium-ore", "pm-rhodium-ore"})
e.tantalum = is_enabled({"tantalum-ore", "pm-tantalum-ore"})
e.tellurium = is_enabled({"tellurium-ore", "pm-tellurium-ore"})
e.phosphorus = is_enabled({"phosphorus-ore", "pm-phosphorus-ore"})
e.thallium = is_enabled({"thallium-ore", "pm-thallium-ore"})
e.boron = is_enabled({"boron-ore", "pm-boron-ore"})
e.zirconium = is_enabled({"zirconium-ore", "pm-zirconium-ore"})

e.calcium = is_enabled({"calcium-ore", "pm-calcium-ore"})
e.yttrium = is_enabled({"yttrium-ore", "pm-yttrium-ore"})
e.lanthanum = is_enabled({"lanthanum", "pm-lanthanum-ore"}) --not exist
e.cerium = is_enabled({"cerium-ore", "pm-cerium-ore"})
e.antimony = is_enabled({"antimony-ore", "pm-antimony-ore"})
e.arsenic = is_enabled({"arsenic-ore", "pm-arsenic-ore"})
e.sodium = is_enabled({"sodium", "pm-sodium"})
e.beryllium = is_enabled({"beryllium-ore", "pm-beryllium-ore"})
e.vanadium = is_enabled({"vanadium-ore", "pm-vanadium-ore"})
e.gallium = is_enabled({"gallium-ore", "pm-gallium-chunks"})
e.germanium = is_enabled({"germanium-ore", "pm-germanium-ore"})
e.selenium = is_enabled({"selenium-ore", "pm-selenium-ore"})
e.strontium = is_enabled({"strontium-ore", "pm-strontium-ore"})
e.baryte = is_enabled({"baryte", "pm-baryte-ore"})
e.barium = is_enabled({"barium-ore", "pm-barium-ore"})
e.radium = is_enabled({"radium-ore", "pm-radium-ore"})
e.mercury = is_enabled({"mercury-ore", "pm-mercury-ore"})
e.molybdenum = is_enabled({"molybdenum-ore", "pm-molybdenum-ore"})
e.iodine = is_enabled({"iodine", "pm-iodine"})
e.potassium = is_enabled({"potassium", "pm-potassium"})

e.hydrogen = is_enabled({"pm-hydrogen-gas", "kr-hydrogen", "hydrogen", "water"})
e.oxygen = is_enabled({"pm-oxygen-gas", "kr-oxygen", "oxygen"})
e.nitrogen = is_enabled({"pm-nitrogen-gas", "nitrogen", "kr-nitrogen"})
e.chlorine = is_enabled({"pm-chlorine", "kr-chlorine", "chlorine"})
e.helium = is_enabled({"pm-helium-gas", "kr-helium", "helium"})
e.argon = is_enabled({"pm-argon-gas", "kr-argon", "argon"})
e.bromine = is_enabled({"pm-bromine", "bromine"})

local function make_ore(ore)
  local icon, filename, mining_particle, mapcolor, ore_type_smelted_result
  if ore.icon and ore.filename and ore.mining_particle and ore.map_color and ore.ore_type_smelted_result then
    icon = ore.icon
    filename = ore.filename
    mining_particle = ore.mining_particle
    mapcolor = ore.map_color
    ore_type_smelted_result = ore.ore_type_smelted_result
  else
    if ore.type == "coal" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "coal-particle"
      mapcolor = {0,0,0}
    elseif ore.type == "copper" then
      icon = "__base__/graphics/icons/copper-ore"
      filename = "__base__/graphics/entity/copper-ore/copper-ore"
      mining_particle = "copper-ore-particle"
      mapcolor = {0.803,0.388,0.215}
      ore_type_smelted_result = "copper-plate"
    elseif ore.type == "iron" then
      icon = "__base__/graphics/icons/iron-ore"
      filename = "__base__/graphics/entity/iron-ore/iron-ore"
      mining_particle = "iron-ore-particle"
      mapcolor = {0.415,0.525,0.580}
      ore_type_smelted_result = "iron-plate"
    elseif ore.type == "uranium" then
      icon = "__base__/graphics/icons/uranium-ore"
      filename = "__base__/graphics/entity/uranium-ore/uranium-ore"
      mining_particle = nil
      mapcolor = {0,0.7,0}
    elseif ore.type == "manganese" then
      icon = "__manganese__/graphics/icons/manganese-ore"
      filename = "__manganese__/graphics/ores/hr-manganese-ore"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.43, g=0.18, b=0.06}
      ore_type_smelted_result = string.gsub(e.manganese, "-ore$", "-plate")
    elseif ore.type == "bismuth" then
      icon = "__bismuth__/graphics/icons/bismuth-ore"
      filename = "__bismuth__/graphics/ores/bismuth-ore"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.5, g=0.33, b=0.16}
      ore_type_smelted_result = string.gsub(e.bismuth, "-ore$", "-plate")
    elseif ore.type == "lead" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.lead, "-ore$", "-plate")
    elseif ore.type == "nickel" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.nickel, "-ore$", "-plate")
    elseif ore.type == "tin" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.tin, "-ore$", "-plate")
    elseif ore.type == "titanium" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.titanium, "-ore$", "-plate")
    elseif ore.type == "antimony" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.antimony, "-ore$", "-plate")
    elseif ore.type == "molybdenum" then
      icon = "__base__/graphics/icons/coal"
      filename = "__base__/graphics/entity/coal/coal"
      mining_particle = "iron-ore-particle"
      mapcolor = {r=0.9, g=0.9, b=0.9}
      ore_type_smelted_result = string.gsub(e.molybdenum, "-ore$", "-plate")
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
    ore_type_smelted_result = ore_type_smelted_result or nil, --Full name of smelted result iron ore --> iron plate
    fuel_value = ore.fuel_value or nil,
---@diagnostic disable-next-line: ambiguity-1
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
      {type="item", name=e.carbon, amount=1, probability=.7985},
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
    results = {
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
    name = "enargite",
    type = "copper",
    fuel_value = "1MJ",
    processing_results = {
      {type="item", name=e.copper, amount=1, probability=.3156},
      {type="item", name=e.carbon, amount=1, probability=.2392},
      {type="item", name=e.iron, amount=1, probability=.0028},
      {type="fluid", name=e.oxygen, amount=1, probability=.4029},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0395},
    }}) end
if e.arsenic then table.insert(define_ores, {
    name = "tennantite",
    type = "copper",
    processing_results = {
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
if e.silicon and e.calcium and e.aluminum and e.magnesium and e.sodium then table.insert(define_ores, {
    name = "aernite",
    type = "iron",
    fuel_value = "0.05MJ",
    processing_results = {
      {type="item", name=e.silicon, amount=1, probability=.1734},
      {type="item", name=e.calcium, amount=1, probability=.1051},
      {type="item", name=e.aluminum, amount=1, probability=.0847},
      {type="item", name=e.iron, amount=1, probability=.0689},
      {type="item", name=e.magnesium, amount=1, probability=.0125},
      {type="item", name=e.carbon, amount=1, probability=.0074},
      {type="item", name=e.sodium, amount=1, probability=.0059},
      {type="fluid", name=e.oxygen, amount=1, probability=.5234},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0187},
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
if e.aluminum then table.insert(define_ores, {
    name = "caresite",
    type = "iron",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.3751},
      {type="item", name=e.aluminum, amount=1, probability=.0906},
      {type="item", name=e.carbon, amount=1, probability=.0202},
      {type="fluid", name=e.oxygen, amount=1, probability=.4836},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0305},
    }}) end
if e.nickel and e.cobalt then table.insert(define_ores, {
    name = "cohenite",
    type = "iron",
    fuel_value = "0.1MJ",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.5492},
      {type="item", name=e.nickel, amount=1, probability=.2886},
      {type="item", name=e.cobalt, amount=1, probability=.0966},
      {type="item", name=e.carbon, amount=1, probability=.0656},
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
if e.nickel then table.insert(define_ores, {
    name = "haxonite",
    type = "iron",
    fuel_value = "0.5MJ",
    processing_results = {
      {type="item", name=e.iron, amount=1, probability=.8182},
      {type="item", name=e.nickel, amount=1, probability=.1290},
      {type="item", name=e.carbon, amount=1, probability=.0528},
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
if e.sodium and e.magnesium then table.insert(define_ores, {
    name = "cejkaite",
    type = "uranium",
    fluid_amount = 10,
    required_fluid = "sulfuric-acid",
    processing_results = {
      {type="item", name=e.uranium, amount=1, probability=.4487},
      {type="item", name=e.sodium, amount=1, probability=.1586},
      {type="item", name=e.carbon, amount=1, probability=.0655},
      {type="item", name=e.iron, amount=1, probability=.0041},
      {type="item", name=e.magnesium, amount=1, probability=.0009},
      {type="fluid", name=e.oxygen, amount=1, probability=.3221},
    }})
end

if mods.Krastorio2 then table.insert(define_ores, {
    {name = "kr1test", type = "iron",   map_color = {0.415,0.525,0.580}}}) end
if mods.Krastorio2 then table.insert(define_ores, {
    {name = "kr2test", type = "iron",   map_color = {0.415,0.525,0.580}}}) end

if e.manganese then
table.insert(define_ores, {
    name = "akhtenskite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6319},
      {type="fluid", name=e.oxygen, amount=1, probability=.3681},
    }})
table.insert(define_ores, {
    name = "albandite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6314},
      {type="item", name=e.sulfur, amount=1, probability=.3686},
    }})
if e.silicon then table.insert(define_ores, {
    name = "braunite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6360},
      {type="item", name=e.silicon, amount=1, probability=.0464},
      {type="fluid", name=e.oxygen, amount=1, probability=.3675},
    }}) end
if e.silicon then table.insert(define_ores, {
    name = "brownleeite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6617},
      {type="item", name=e.silicon, amount=1, probability=.3383},
    }}) end
if e.potassium then table.insert(define_ores, {
    name = "cryptomelane",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5983},
      {type="item", name=e.potassium, amount=1, probability=.0532},
      {type="fluid", name=e.oxygen, amount=1, probability=.3485},
    }}) end
table.insert(define_ores, {
    name = "feitknechtite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6247},
      {type="fluid", name=e.oxygen, amount=1, probability=.3639},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0115},
    }})
table.insert(define_ores, {
    name = "groutite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6247},
      {type="fluid", name=e.oxygen, amount=1, probability=.3639},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0115},
    }})
table.insert(define_ores, {
    name = "hausmannite",
    type = "manganese",
    start_placement = true,
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.7203},
      {type="fluid", name=e.oxygen, amount=1, probability=.2797},
    }})
table.insert(define_ores, {
    name = "janggunite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5692},
      {type="item", name=e.iron, amount=1, probability=.0200},
      {type="fluid", name=e.oxygen, amount=1, probability=.4001},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0108},
    }})
if e.boron then table.insert(define_ores, {
    name = "jimboite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5836},
      {type="item", name=e.boron, amount=1, probability=.0765},
      {type="fluid", name=e.oxygen, amount=1, probability=.3399},
    }}) end
table.insert(define_ores, {
    name = "manganite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6247},
      {type="fluid", name=e.oxygen, amount=1, probability=.3639},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0115},
    }})
table.insert(define_ores, {
    name = "manganosite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.7745},
      {type="fluid", name=e.oxygen, amount=1, probability=.2255},
    }})
if e.sodium and e.potassium and e.aluminum then table.insert(define_ores, {
    name = "manjiroite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5791},
      {type="item", name=e.sodium, amount=1, probability=.0217},
      {type="item", name=e.potassium, amount=1, probability=.0106},
      {type="item", name=e.aluminum, amount=1, probability=.0036},
      {type="fluid", name=e.oxygen, amount=1, probability=.3806},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0044},
    }}) end
if e.silicon then table.insert(define_ores, {
    name = "mavlyanovite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.7653},
      {type="item", name=e.silicon, amount=1, probability=.2347},
    }}) end
table.insert(define_ores, {
    name = "nsutite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6297},
      {type="fluid", name=e.oxygen, amount=1, probability=.3668},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0036},
    }}) 
table.insert(define_ores, {
    name = "pyrochroite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6176},
      {type="fluid", name=e.oxygen, amount=1, probability=.3597},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0227},
    }})
table.insert(define_ores, {
    name = "pyrolusite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6319},
      {type="fluid", name=e.oxygen, amount=1, probability=.3681},
    }})
table.insert(define_ores, {
    name = "rambergite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6314},
      {type="item", name=e.sulfur, amount=1, probability=.3686},
    }})
table.insert(define_ores, {
    name = "ramsdellite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6319},
      {type="fluid", name=e.oxygen, amount=1, probability=.3681},
    }})
if e.strontium then table.insert(define_ores, {
    name = "strontiomelane",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5612},
      {type="item", name=e.strontium, amount=1, probability=.1119},
      {type="fluid", name=e.oxygen, amount=1, probability=.3269},
    }}) end
if e.sodium and e.calcium then table.insert(define_ores, {
    name = "takanelite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.6421},
      {type="item", name=e.calcium, amount=1, probability=.0096},
      {type="fluid", name=e.oxygen, amount=1, probability=.3435},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0048},
    }}) end
if e.sodium and e.calcium and e.potassium then table.insert(define_ores, {
    name = "todorokite",
    type = "manganese",
    processing_results = {
      {type="item", name=e.manganese, amount=1, probability=.5654},
      {type="item", name=e.sodium, amount=1, probability=.0079},
      {type="item", name=e.calcium, amount=1, probability=.0034},
      {type="item", name=e.potassium, amount=1, probability=.0013},
      {type="fluid", name=e.oxygen, amount=1, probability=.4116},
      {type="fluid", name=e.hydrogen, amount=1, probability=.0104},
    }}) end
end

if e.lead then
if e.silicon then table.insert(define_ores, {
  name = "alamosite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7314},
    {type="item", name=e.silicon, amount=1, probability=.0991},
    {type="fluid", name=e.oxygen, amount=1, probability=.1694},
  }}) end
if e.tellurium then table.insert(define_ores, {
  name = "altaite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6189},
    {type="item", name=e.tellurium, amount=1, probability=.3811},
  }}) end
table.insert(define_ores, {
  name = "anglesite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6832},
    {type="item", name=e.sulfur, amount=1, probability=.1057},
    {type="fluid", name=e.oxygen, amount=1, probability=.2110},
  }})
if e.antimony and e.gold then table.insert(define_ores, {
  name = "anyuiite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5466},
    {type="item", name=e.gold, amount=1, probability=.3464},
    {type="item", name=e.antimony, amount=1, probability=.1071},
  }}) end
if e.aluminum and e.fluorine then table.insert(define_ores, {
  name = "aravaipaite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7421},
    {type="item", name=e.aluminum, amount=1, probability=.0322},
    {type="fluid", name=e.fluorine, amount=1, probability=.2041},
    {type="fluid", name=e.oxygen, amount=1, probability=.0191},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0024},
  }}) end
if e.antimony and e.chlorine then table.insert(define_ores, {
  name = "ardaite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5714},
    {type="item", name=e.antimony, amount=1, probability=.2297},
    {type="item", name=e.sulfur, amount=1, probability=.1629},
    {type="fluid", name=e.chlorine, amount=1, probability=.0360},
  }}) end
if e.arsenic and e.zinc then table.insert(define_ores, {
  name = "arsenbrackebuschite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5392},
    {type="item", name=e.arsenic, amount=1, probability=.1950},
    {type="item", name=e.iron, amount=1, probability=.0545},
    {type="item", name=e.zinc, amount=1, probability=.0213},
    {type="fluid", name=e.oxygen, amount=1, probability=.1874},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0025},
  }}) end
if e.arsenic and e.zinc then table.insert(define_ores, {
  name = "arsendescloizite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4835},
    {type="item", name=e.arsenic, amount=1, probability=.1748},
    {type="item", name=e.zinc, amount=1, probability=.1526},
    {type="fluid", name=e.oxygen, amount=1, probability=.1867},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0024},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "arsentsumebite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5677},
    {type="item", name=e.arsenic, amount=1, probability=.1026},
    {type="item", name=e.copper, amount=1, probability=.0871},
    {type="item", name=e.sulfur, amount=1, probability=.0439},
    {type="fluid", name=e.oxygen, amount=1, probability=.1973},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0014},
  }}) end
if e.aluminum and e.fluorine then table.insert(define_ores, {
  name = "artroeite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6372},
    {type="item", name=e.aluminum, amount=1, probability=.0830},
    {type="fluid", name=e.fluorine, amount=1, probability=.1753},
    {type="fluid", name=e.oxygen, amount=1, probability=.0984},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0062},
  }}) end
if e.bismuth then table.insert(define_ores, {
  name = "aschamalmite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6376},
    {type="item", name=e.bismuth, amount=1, probability=.2144},
    {type="item", name=e.sulfur, amount=1, probability=.1480},
  }}) end
if e.silicon and e.chlorine then table.insert(define_ores, {
  name = "ashburtonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4775},
    {type="item", name=e.copper, amount=1, probability=.1464},
    {type="item", name=e.silicon, amount=1, probability=.0647},
    {type="item", name=e.carbon, amount=1, probability=.0277},
    {type="fluid", name=e.oxygen, amount=1, probability=.2581},
    {type="fluid", name=e.chlorine, amount=1, probability=.0204},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0052},
  }}) end
if e.aluminum and e.fluorine then table.insert(define_ores, {
  name = "asisite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8778},
    {type="item", name=e.silicon, amount=1, probability=.0093},
    {type="fluid", name=e.oxygen, amount=1, probability=.0685},
    {type="fluid", name=e.chlorine, amount=1, probability=.0444},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "barstowite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7403},
    {type="item", name=e.carbon, amount=1, probability=.0107},
    {type="fluid", name=e.chlorine, amount=1, probability=.1900},
    {type="fluid", name=e.oxygen, amount=1, probability=.0572},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0018},
  }}) end
if e.silicon and e.manganese then table.insert(define_ores, {
  name = "barysilite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7477},
    {type="item", name=e.silicon, amount=1, probability=.0760},
    {type="item", name=e.manganese, amount=1, probability=.0248},
    {type="fluid", name=e.oxygen, amount=1, probability=.1515},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "baumhauerite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5138},
    {type="item", name=e.arsenic, amount=1, probability=.2477},
    {type="item", name=e.sulfur, amount=1, probability=.2385},
  }}) end
if e.arsenic then table.insert(define_ores, {-- Uhh double check this one
  name = "baumhauerite-2a",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5138},
    {type="item", name=e.arsenic, amount=1, probability=.2477},
    {type="item", name=e.sulfur, amount=1, probability=.2385},
  }}) end
if e.silver and e.chlorine and e.fluorine then table.insert(define_ores, {-- Uhh double check this one
  name = "bideauxite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6226},
    {type="item", name=e.silver, amount=1, probability=.1621},
    {type="fluid", name=e.chlorine, amount=1, probability=.1598},
    {type="fluid", name=e.fluorine, amount=1, probability=.0428},
    {type="fluid", name=e.oxygen, amount=1, probability=.0120},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0008},
  }}) end
if e.antimony then table.insert(define_ores, {
  name = "bindheimite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5381},
    {type="item", name=e.antimony, amount=1, probability=.3162},
    {type="fluid", name=e.oxygen, amount=1, probability=.1454},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0003},
  }}) end
if e.calcium and e.chlorine then table.insert(define_ores, {
  name = "blixite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8628},
    {type="item", name=e.calcium, amount=1, probability=.0017},
    {type="fluid", name=e.chlorine, amount=1, probability=.0772},
    {type="fluid", name=e.oxygen, amount=1, probability=.0574},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0009},
  }}) end
if e.antimony and e.silver and e.potassium and e.chlorine then table.insert(define_ores, {
  name = "boleite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4926},
    {type="item", name=e.copper, amount=1, probability=.1394},
    {type="item", name=e.silver, amount=1, probability=.0888},
    {type="item", name=e.potassium, amount=1, probability=.0036},
    {type="fluid", name=e.chlorine, amount=1, probability=.2010},
    {type="fluid", name=e.oxygen, amount=1, probability=.0702},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0044},
  }}) end
if e.antimony then table.insert(define_ores, {
  name = "boulangerite ",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5488},
    {type="item", name=e.antimony, amount=1, probability=.2644},
    {type="item", name=e.sulfur, amount=1, probability=.1868},
  }}) end
if e.vanadium and e.manganese and e.zinc then table.insert(define_ores, {
  name = "brackebuschite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5524},
    {type="item", name=e.vanadium, amount=1, probability=.1430},
    {type="item", name=e.iron, amount=1, probability=.0392},
    {type="item", name=e.manganese, amount=1, probability=.0385},
    {type="item", name=e.zinc, amount=1, probability=.0092},
    {type="fluid", name=e.oxygen, amount=1, probability=.2155},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0023},
  }}) end
if e.vanadium and e.phosphorus and e.aluminum and e.chromium and e.zinc then table.insert(define_ores, {
  name = "bushmakinite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6267},
    {type="item", name=e.vanadium, amount=1, probability=.0564},
    {type="item", name=e.phosphorus, amount=1, probability=.0464},
    {type="item", name=e.aluminum, amount=1, probability=.0311},
    {type="item", name=e.copper, amount=1, probability=.0200},
    {type="item", name=e.chromium, amount=1, probability=.0109},
    {type="item", name=e.zinc, amount=1, probability=.0010},
    {type="item", name=e.sulfur, amount=1, probability=.0005},
    {type="fluid", name=e.oxygen, amount=1, probability=.2055},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0015},
  }}) end
if e.silicon and e.magnesium and e.aluminum and e.boron then table.insert(define_ores, {
  name = "britvinite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6662},
    {type="item", name=e.silicon, amount=1, probability=.0596},
    {type="item", name=e.magnesium, amount=1, probability=.0478},
    {type="item", name=e.carbon, amount=1, probability=.0057},
    {type="item", name=e.aluminum, amount=1, probability=.0022},
    {type="fluid", name=e.oxygen, amount=1, probability=.2076},
    {type="fluid", name=e.boron, amount=1, probability=.0083},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0026},
  }}) end
if e.vanadium then table.insert(define_ores, {
  name = "calderonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5822},
    {type="item", name=e.vanadium, amount=1, probability=.1360},
    {type="item", name=e.iron, amount=1, probability=.0706},
    {type="item", name=e.copper, amount=1, probability=.0045},
    {type="fluid", name=e.oxygen, amount=1, probability=.2046},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0021},
  }}) end
table.insert(define_ores, {
  name = "caledonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6421},
    {type="item", name=e.copper, amount=1, probability=.0788},
    {type="item", name=e.sulfur, amount=1, probability=.0596},
    {type="item", name=e.carbon, amount=1, probability=.0074},
    {type="fluid", name=e.oxygen, amount=1, probability=.2083},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0037},
  }})
if e.sodium and e.chlorine then table.insert(define_ores, {
  name = "caracolite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5135},
    {type="item", name=e.sulfur, amount=1, probability=.1192},
    {type="item", name=e.sodium, amount=1, probability=.0855},
    {type="fluid", name=e.oxygen, amount=1, probability=.2379},
    {type="fluid", name=e.chlorine, amount=1, probability=.0439},
  }}) end
if e.chromium and e.vanadium then table.insert(define_ores, {
  name = "cassedanneite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6834},
    {type="item", name=e.chromium, amount=1, probability=.0686},
    {type="item", name=e.vanadium, amount=1, probability=.0672},
    {type="fluid", name=e.oxygen, amount=1, probability=.1794},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0013},
  }}) end
if e.vanadium and e.manganese then table.insert(define_ores, {
  name = "cechite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5252},
    {type="item", name=e.vanadium, amount=1, probability=.1291},
    {type="item", name=e.iron, amount=1, probability=.0708},
    {type="item", name=e.manganese, amount=1, probability=.0696},
    {type="fluid", name=e.oxygen, amount=1, probability=.2028},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0026},
  }}) end
table.insert(define_ores, {
  name = "cerussite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7754},
    {type="item", name=e.carbon, amount=1, probability=.0449},
    {type="fluid", name=e.oxygen, amount=1, probability=.1796},
  }})
if e.potassium and e.chlorine then table.insert(define_ores, {
  name = "challacolloite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6569},
    {type="item", name=e.potassium, amount=1, probability=.0632},
    {type="fluid", name=e.chlorine, amount=1, probability=.2799},
  }}) end
table.insert(define_ores, {
  name = "chenite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6985},
    {type="item", name=e.sulfur, amount=1, probability=.0541},
    {type="item", name=e.copper, amount=1, probability=.0536},
    {type="fluid", name=e.oxygen, amount=1, probability=.1888},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0051},
  }})
if e.zinc and e.tellurium and e.vanadium then table.insert(define_ores, {
  name = "cheremnykhite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4890},
    {type="item", name=e.zinc, amount=1, probability=.1543},
    {type="item", name=e.tellurium, amount=1, probability=.1004},
    {type="item", name=e.vanadium, amount=1, probability=.0801},
    {type="fluid", name=e.oxygen, amount=1, probability=.1762},
  }}) end
if e.vanadium then table.insert(define_ores, {
  name = "chervetite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6596},
    {type="item", name=e.vanadium, amount=1, probability=.1622},
    {type="fluid", name=e.oxygen, amount=1, probability=.1783},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "chloroxiphite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7561},
    {type="item", name=e.copper, amount=1, probability=.0773},
    {type="fluid", name=e.chlorine, amount=1, probability=.0863},
    {type="fluid", name=e.oxygen, amount=1, probability=.0778},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0025},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "chubutite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8968},
    {type="fluid", name=e.oxygen, amount=1, probability=.0594},
    {type="fluid", name=e.chlorine, amount=1, probability=.0438},
  }}) end
if e.selenium then table.insert(define_ores, {
  name = "clausthalite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7241},
    {type="item", name=e.selenium, amount=1, probability=.2759},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "clinomimetite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6961},
    {type="item", name=e.arsenic, amount=1, probability=.1510},
    {type="fluid", name=e.oxygen, amount=1, probability=.1290},
    {type="fluid", name=e.chlorine, amount=1, probability=.0238},
  }}) end
if e.tin and e.arsenic and e.silver then table.insert(define_ores, {
  name = "coiraite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5457},
    {type="item", name=e.sulfur, amount=1, probability=.2110},
    {type="item", name=e.tin, amount=1, probability=.1729},
    {type="item", name=e.arsenic, amount=1, probability=.0526},
    {type="item", name=e.iron, amount=1, probability=.0144},
    {type="item", name=e.silver, amount=1, probability=.0033},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "cotunnite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7450},
    {type="fluid", name=e.chlorine, amount=1, probability=.2550},
  }}) end
if e.chromium then table.insert(define_ores, {
  name = "crocoite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6411},
    {type="item", name=e.chromium, amount=1, probability=.1609},
    {type="fluid", name=e.oxygen, amount=1, probability=.1980},
  }}) end
if e.chromium and e.chlorine then table.insert(define_ores, {
  name = "cumengite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5508},
    {type="item", name=e.copper, amount=1, probability=.1609},
    {type="fluid", name=e.chlorine, amount=1, probability=.1885},
    {type="fluid", name=e.oxygen, amount=1, probability=.0932},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0066},
  }}) end
if e.antimony and e.chlorine then table.insert(define_ores, {
  name = "dadsonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4861},
    {type="item", name=e.antimony, amount=1, probability=.3129},
    {type="item", name=e.sulfur, amount=1, probability=.1970},
    {type="fluid", name=e.chlorine, amount=1, probability=.0040},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "damarite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8804},
    {type="fluid", name=e.oxygen, amount=1, probability=.0680},
    {type="fluid", name=e.chlorine, amount=1, probability=.0502},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0014},
  }}) end
if e.zinc and e.vanadium then table.insert(define_ores, {
  name = "descloizite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5122},
    {type="item", name=e.zinc, amount=1, probability=.1616},
    {type="item", name=e.vanadium, amount=1, probability=.1259},
    {type="fluid", name=e.oxygen, amount=1, probability=.1977},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0025},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "diaboleite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6718},
    {type="item", name=e.copper, amount=1, probability=.1030},
    {type="fluid", name=e.chlorine, amount=1, probability=.1149},
    {type="fluid", name=e.oxygen, amount=1, probability=.1037},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0065},
  }}) end
if e.phosphorus and e.aluminum then table.insert(define_ores, {
  name = "drugmanite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6023},
    {type="item", name=e.phosphorus, amount=1, probability=.0900},
    {type="item", name=e.iron, amount=1, probability=.0609},
    {type="item", name=e.aluminum, amount=1, probability=.0098},
    {type="fluid", name=e.oxygen, amount=1, probability=.2326},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0044},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "dufrenoysite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5719},
    {type="item", name=e.sulfur, amount=1, probability=.2213},
    {type="item", name=e.arsenic, amount=1, probability=.2068},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "duftite-alpha",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4856},
    {type="item", name=e.arsenic, amount=1, probability=.1756},
    {type="item", name=e.copper, amount=1, probability=.1489},
    {type="fluid", name=e.oxygen, amount=1, probability=.1875},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0024},
  }}) end
if e.zinc and e.tellurium and e.arsenic and e.vanadium and e.silicon then table.insert(define_ores, {
  name = "dugganite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4773},
    {type="item", name=e.zinc, amount=1, probability=.1506},
    {type="item", name=e.tellurium, amount=1, probability=.0980},
    {type="item", name=e.arsenic, amount=1, probability=.0690},
    {type="item", name=e.vanadium, amount=1, probability=.0235},
    {type="item", name=e.silicon, amount=1, probability=.0065},
    {type="fluid", name=e.oxygen, amount=1, probability=.1720},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0031},
  }}) end
if e.rhodium then table.insert(define_ores, {
  name = "dzhezkazganite", --Concentrated by dissolving out bornite and blue chalcocite with KCN.
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5708},
    {type="item", name=e.sulfur, amount=1, probability=.2944},
    {type="item", name=e.copper, amount=1, probability=.0875},
    {type="item", name=e.rhodium, amount=1, probability=.0472},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "ecdemite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7549},
    {type="item", name=e.arsenic, amount=1, probability=.0910},
    {type="fluid", name=e.chlorine, amount=1, probability=.0861},
    {type="fluid", name=e.oxygen, amount=1, probability=.0680},
  }}) end
table.insert(define_ores, {
  name = "elyite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7491},
    {type="item", name=e.copper, amount=1, probability=.0574},
    {type="item", name=e.sulfur, amount=1, probability=.0290},
    {type="fluid", name=e.oxygen, amount=1, probability=.1591},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0055},
  }})
if e.chromium and e.phosphorus then table.insert(define_ores, {
  name = "embreyite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7019},
    {type="item", name=e.chromium, amount=1, probability=.0705},
    {type="item", name=e.phosphorus, amount=1, probability=.0420},
    {type="fluid", name=e.oxygen, amount=1, probability=.1843},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0014},
  }}) end
if e.tellurium then table.insert(define_ores, {
  name = "fairbankite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5413},
    {type="item", name=e.tellurium, amount=1, probability=.3333},
    {type="fluid", name=e.oxygen, amount=1, probability=.1254},
  }}) end
if e.antimony then table.insert(define_ores, {
  name = "falkmanite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5509},
    {type="item", name=e.antimony, amount=1, probability=.2577},
    {type="item", name=e.sulfur, amount=1, probability=.1914},
  }}) end
if e.arsenic and e.zinc then table.insert(define_ores, {
  name = "feinglosite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5512},
    {type="item", name=e.arsenic, amount=1, probability=.1495},
    {type="item", name=e.zinc, amount=1, probability=.0652},
    {type="item", name=e.sulfur, amount=1, probability=.0213},
    {type="item", name=e.iron, amount=1, probability=.0186},
    {type="fluid", name=e.oxygen, amount=1, probability=.1915},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0027},
  }}) end
if e.barium and e.phosphorus then table.insert(define_ores, {
  name = "ferrazite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5161},
    {type="item", name=e.barium, amount=1, probability=.1140},
    {type="item", name=e.phosphorus, amount=1, probability=.0686},
    {type="fluid", name=e.oxygen, amount=1, probability=.2834},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0179},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "fiedlerite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7614},
    {type="fluid", name=e.chlorine, amount=1, probability=.1737},
    {type="fluid", name=e.oxygen, amount=1, probability=.0392},
    {type="fluid", name=e.fluorine, amount=1, probability=.0233},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0025},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "finnemanite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7193},
    {type="item", name=e.arsenic, amount=1, probability=.1561},
    {type="fluid", name=e.oxygen, amount=1, probability=.1000},
    {type="fluid", name=e.chlorine, amount=1, probability=.0246},
  }}) end
if e.germanium then table.insert(define_ores, {
  name = "fleischerite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6176},
    {type="item", name=e.germanium, amount=1, probability=.0721},
    {type="item", name=e.sulfur, amount=1, probability=.0637},
    {type="fluid", name=e.oxygen, amount=1, probability=.2385},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0080},
  }}) end
if e.germanium then table.insert(define_ores, {
  name = "fornacite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5526},
    {type="item", name=e.arsenic, amount=1, probability=.0999},
    {type="item", name=e.copper, amount=1, probability=.0847},
    {type="item", name=e.chromium, amount=1, probability=.0693},
    {type="fluid", name=e.oxygen, amount=1, probability=.1920},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0013},
  }}) end
if e.tin and e.antimony then table.insert(define_ores, {
  name = "franckeite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4881},
    {type="item", name=e.sulfur, amount=1, probability=.2250},
    {type="item", name=e.tin, amount=1, probability=.1368},
    {type="item", name=e.antimony, amount=1, probability=.1220},
    {type="item", name=e.iron, amount=1, probability=.0280},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "freedite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7561},
    {type="item", name=e.arsenic, amount=1, probability=.0684},
    {type="item", name=e.copper, amount=1, probability=.0290},
    {type="fluid", name=e.chlorine, amount=1, probability=.0809},
    {type="fluid", name=e.oxygen, amount=1, probability=.0657},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "gabrielsonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4945},
    {type="item", name=e.arsenic, amount=1, probability=.1788},
    {type="item", name=e.iron, amount=1, probability=.1333},
    {type="fluid", name=e.oxygen, amount=1, probability=.1909},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0024},
  }}) end
table.insert(define_ores, {
  name = "galena",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8660},
    {type="item", name=e.sulfur, amount=1, probability=.1340},
  }})
if e.silicon and e.calcium and e.manganese then table.insert(define_ores, {
  name = "ganomalite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6428},
    {type="item", name=e.silicon, amount=1, probability=.0871},
    {type="item", name=e.calcium, amount=1, probability=.0691},
    {type="item", name=e.manganese, amount=1, probability=.0189},
    {type="fluid", name=e.oxygen, amount=1, probability=.1820},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "gebhardite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7066},
    {type="item", name=e.arsenic, amount=1, probability=.1277},
    {type="fluid", name=e.chlorine, amount=1, probability=.0907},
    {type="fluid", name=e.oxygen, amount=1, probability=.0750},
  }}) end
if e.antimony and e.arsenic then table.insert(define_ores, {
  name = "geocronite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6712},
    {type="item", name=e.sulfur, amount=1, probability=.1706},
    {type="item", name=e.antimony, amount=1, probability=.1408},
    {type="item", name=e.arsenic, amount=1, probability=.0173},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "georgiadesite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7538},
    {type="item", name=e.arsenic, amount=1, probability=.0681},
    {type="fluid", name=e.chlorine, amount=1, probability=.1096},
    {type="fluid", name=e.oxygen, amount=1, probability=.0669},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0015},
  }}) end
if e.bismuth and e.antimony and e.silver then table.insert(define_ores, {
  name = "giessenite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.4934},
    {type="item", name=e.bismuth, amount=1, probability=.3062},
    {type="item", name=e.sulfur, amount=1, probability=.1645},
    {type="item", name=e.antimony, amount=1, probability=.0223},
    {type="item", name=e.copper, amount=1, probability=.0087},
    {type="item", name=e.silver, amount=1, probability=.0049},
  }}) end
if e.tellurium then table.insert(define_ores, {
  name = "girdite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6077},
    {type="item", name=e.tellurium, amount=1, probability=.2495},
    {type="fluid", name=e.oxygen, amount=1, probability=.1408},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0020},
  }}) end
if e.fluorine then table.insert(define_ores, {
  name = "grandreefite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7556},
    {type="item", name=e.sulfur, amount=1, probability=.0585},
    {type="fluid", name=e.oxygen, amount=1, probability=.1167},
    {type="fluid", name=e.fluorine, amount=1, probability=.0693},
  }}) end
if e.arsenic then table.insert(define_ores, {
  name = "gratonite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7049},
    {type="item", name=e.sulfur, amount=1, probability=.1818},
    {type="item", name=e.arsenic, amount=1, probability=.1133},
  }}) end
if e.arsenic and e.calcium and e.chlorine then table.insert(define_ores, {
  name = "hedyphane",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5387},
    {type="item", name=e.arsenic, amount=1, probability=.1948},
    {type="item", name=e.calcium, amount=1, probability=.0695},
    {type="fluid", name=e.oxygen, amount=1, probability=.1664},
    {type="fluid", name=e.chlorine, amount=1, probability=.0307},
  }}) end
if e.arsenic and e.chlorine then table.insert(define_ores, {
  name = "heliophyllite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7549},
    {type="item", name=e.arsenic, amount=1, probability=.0910},
    {type="fluid", name=e.chlorine, amount=1, probability=.0861},
    {type="fluid", name=e.oxygen, amount=1, probability=.0680},
  }}) end
if e.chlorine then table.insert(define_ores, {
  name = "hematophanite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7232},
    {type="item", name=e.iron, amount=1, probability=.1462},
    {type="fluid", name=e.oxygen, amount=1, probability=.1222},
    {type="fluid", name=e.chlorine, amount=1, probability=.0077},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0007},
  }}) end
if e.chromium and e.zinc and e.silicon and e.fluorine then table.insert(define_ores, {
  name = "hemihedrite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.6781},
    {type="item", name=e.chromium, amount=1, probability=.1021},
    {type="item", name=e.zinc, amount=1, probability=.0214},
    {type="item", name=e.silicon, amount=1, probability=.0184},
    {type="fluid", name=e.oxygen, amount=1, probability=.1676},
    {type="fluid", name=e.fluorine, amount=1, probability=.0124},
  }}) end
if e.thallium and e.chlorine and e.bromine and e.fluorine then table.insert(define_ores, {
  name = "hephaistosite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5251},
    {type="item", name=e.thallium, amount=1, probability=.2423},
    {type="fluid", name=e.chlorine, amount=1, probability=.2168},
    {type="fluid", name=e.bromine, amount=1, probability=.0141},
    {type="fluid", name=e.fluorine, amount=1, probability=.0017},
  }}) end
if e.vanadium then table.insert(define_ores, {
  name = "heyite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7187},
    {type="item", name=e.iron, amount=1, probability=.0775},
    {type="item", name=e.vanadium, amount=1, probability=.0707},
    {type="fluid", name=e.oxygen, amount=1, probability=.1332},
  }}) end
if e.bismuth and e.silver then table.insert(define_ores, {
  name = "heyrovskyite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5450},
    {type="item", name=e.bismuth, amount=1, probability=.2748},
    {type="item", name=e.sulfur, amount=1, probability=.1518},
    {type="item", name=e.silver, amount=1, probability=.0284},
  }}) end
table.insert(define_ores, {
  name = "hydrocerussite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.8014},
    {type="item", name=e.carbon, amount=1, probability=.0310},
    {type="fluid", name=e.oxygen, amount=1, probability=.1650},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0026},
  }})
if e.phosphorus then table.insert(define_ores, {
  name = "hydroxylpyromorphite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.7743},
    {type="item", name=e.phosphorus, amount=1, probability=.0695},
    {type="fluid", name=e.oxygen, amount=1, probability=.1555},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0008},
  }}) end
if e.phosphorus then table.insert(define_ores, {
  name = "hyttsjoite",
  type = "lead",
  processing_results = {
    {type="item", name=e.lead, amount=1, probability=.5443},
    {type="item", name=e.silicon, amount=1, probability=.1230},
    {type="item", name=e.barium, amount=1, probability=.0401},
    {type="item", name=e.calcium, amount=1, probability=.0292},
    {type="item", name=e.iron, amount=1, probability=.0163},
    {type="item", name=e.manganese, amount=1, probability=.0160},
    {type="fluid", name=e.oxygen, amount=1, probability=.2242},
    {type="fluid", name=e.chlorine, amount=1, probability=.0052},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0018},
  }}) end

-- TODO https://webmineral.com/MySQL/mineral_chem.php?st=76&minmax=50&sym1=Pb&percent1=100&
end
if e.nickel then --https://webmineral.com/MySQL/mineral_chem.php?sym1=Ni&percent1=100&sym2=&percent2=&sym3=&percent3=&minmax=50&submit=Submit
if e.arsenic then table.insert(define_ores, {
  name = "aerugite",
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5407},
    {type="item", name=e.arsenic, amount=1, probability=.2301},
    {type="fluid", name=e.oxygen, amount=1, probability=.2293},
  }}) end
table.insert(define_ores, {
  name = "awaruite",
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.7243},
    {type="item", name=e.iron, amount=1, probability=.2757},
  }})
table.insert(define_ores, {
  name = "bunsenite",
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.7858},
    {type="fluid", name=e.oxygen, amount=1, probability=.2142},
  }})
if e.arsenic then table.insert(define_ores, {
  name = "dienerite",
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.7015},
    {type="item", name=e.arsenic, amount=1, probability=.2985},
  }}) end
table.insert(define_ores, {
  name = "godlevskite",
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.6005},
    {type="item", name=e.sulfur, amount=1, probability=.3281},
    {type="item", name=e.iron, amount=1, probability=.0714},
  }})
table.insert(define_ores, {
  name = "heazlewoodite", --In serpentine, probably of hydrothermal origin.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.7330},
    {type="item", name=e.sulfur, amount=1, probability=.2670},
  }})
if e.arsenic then table.insert(define_ores, {
  name = "maucherite", --In hydrothermal veins with other nickel arsenides and sulfides.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5186},
    {type="item", name=e.arsenic, amount=1, probability=.4814},
  }}) end
if e.phosphorus and e.cobalt then table.insert(define_ores, {
  name = "melliniite", --Found in an acapulcoite, a primitive achondrite meteorite. New structure type.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5198},
    {type="item", name=e.iron, amount=1, probability=.3527},
    {type="item", name=e.phosphorus, amount=1, probability=.1252},
    {type="item", name=e.cobalt, amount=1, probability=.0023},
  }}) end
table.insert(define_ores, {
  name = "millerite", --In limestone and dolomite cavities.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.6467},
    {type="item", name=e.sulfur, amount=1, probability=.3533},
  }})
-- table.insert(define_ores, {
--   name = "nickel", --In serpentinized ultramafic rocks as a result o flow-temperature hydrothermal activity.
--     type = "nickel",
--   processing_results = {
--     {type="item", name=e.nickel, amount=1},
--   }})
table.insert(define_ores, {
  name = "nullaginite", --Secondary mineral in serpentinized peridotites.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5552},
    {type="item", name=e.carbon, amount=1, probability=.0568},
    {type="fluid", name=e.oxygen, amount=1, probability=.3784},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0095},
  }})
if e.arsenic then table.insert(define_ores, {
  name = "orcelite",--Inclusions in pentlandite in ultramafic rocks.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.6514},
    {type="item", name=e.arsenic, amount=1, probability=.3486},
  }}) end
table.insert(define_ores, {
  name = "otwayite",--Late-stage fracture filling.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5116},
    {type="item", name=e.carbon, amount=1, probability=.0524},
    {type="fluid", name=e.oxygen, amount=1, probability=.4184},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0176},
  }})
table.insert(define_ores, {
  name = "paraotwayite",--Named for its close physical and chemical resemblance to otwayite.
  type = "nickel",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5659},
    {type="item", name=e.sulfur, amount=1, probability=.0386},
    {type="item", name=e.carbon, amount=1, probability=.0145},
    {type="fluid", name=e.oxygen, amount=1, probability=.3664},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0146},
  }})
if e.silicon and e.phosphorus then table.insert(define_ores, {
  name = "perryite",--Anomalously silicon-rich mesosiderite and enstatite chondrite meteorites, probably formed by exsolution from kamacite.
  type = "nickel",
  desc = "Named for Stuart Hoffman Perry (1874-1957), American newspaperman and leading private collector of meteorites.",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.6400},
    {type="item", name=e.iron, amount=1, probability=.2030},
    {type="item", name=e.silicon, amount=1, probability=.1148},
    {type="item", name=e.phosphorus, amount=1, probability=.0422},
  }}) end
table.insert(define_ores, {
  name = "polydymite",--Found in hydrothermal veins. Forms a series with linnaeite.
  type = "nickel",
  desc = "From the Greek for *many* and *twin*, as the mineral is observed in twinned forms.",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5785},
    {type="item", name=e.sulfur, amount=1, probability=.4215},
  }})
table.insert(define_ores, {
  name = "tetrataenite",--Exsolution rims and grains in meteorites and exsolved with antitaenite.
  type = "nickel",
  desc = "Named for taenite and the tetragonal crystal form of this polymorph.",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5124},
    {type="item", name=e.iron, amount=1, probability=.4876},
  }})
table.insert(define_ores, {
  name = "theophrastite",--Coatings in chromitite in lenses in serpentinites (
  type = "nickel",
  desc = "Named for Theophrastus, (ca. 371 BC-ca. 287 BC), the first Greek mineralogist.",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.6331},
    {type="fluid", name=e.oxygen, amount=1, probability=.3452},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0217},
  }})
if e.antimony then table.insert(define_ores, {
  name = "tucekite",--In a hydrothermal deposit.
  type = "nickel",
  desc = "Named for Karel Tucek, Curator of Minerals in the National Museum, Prague, Poland.",
  processing_results = {
    {type="item", name=e.nickel, amount=1, probability=.5137},
    {type="item", name=e.sulfur, amount=1, probability=.2495},
    {type="item", name=e.antimony, amount=1, probability=.2368},
  }}) end
end
if e.tin then --https://webmineral.com/MySQL/mineral_chem.php?sym1=Sn&percent1=100&sym2=&percent2=&sym3=&percent3=&minmax=60&submit=Submit
-- if e.antimony then table.insert(define_ores, {
--   name = "abhurdite",--Found on ship-wrecked corroded tin ingots.
--   type = "tin",
--   desc = "Named for its locality.",
--   processing_results = {

--   }}) end
table.insert(define_ores, {
  name = "berndite",--Secondary mineral in tin sulfide veins and in a high temperature deposit, hydrothermally altered.
  type = "tin",
  desc = "Named for Fritz Berndt, German mineralogist.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.6492},
    {type="item", name=e.sulfur, amount=1, probability=.3508},
  }})
if e.calcium then table.insert(define_ores, {
  name = "burtite",
  type = "tin",
  desc = "From a garnetite in a tin-bearing skarn, formed under conditions of relatively low temperature and low (XCO2).",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4551},
    {type="item", name=e.calcium, amount=1, probability=.1537},
    {type="fluid", name=e.oxygen, amount=1, probability=.3680},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0232},
  }}) end
table.insert(define_ores, {
  name = "cassiterite",--Granite pegmatites and alluvial placer deposits.
  type = "tin",
  desc = "From the Greek kassiteros - *tin.*",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.7877},
    {type="fluid", name=e.oxygen, amount=1, probability=.2123},
  }})
table.insert(define_ores, {
  name = "herzenbergite",--Of hydrothermal origin, later than the deposition of cassiterite.
  type = "tin",
  desc = "For Robert Herzenberg (1885-?), German chemist of Oruro, Bolivia.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.7873},
    {type="item", name=e.sulfur, amount=1, probability=.2127},
  }})
if e.calcium and e.silicon then table.insert(define_ores, {
  name = "malayaite",--Hydrothermal alteration of cassiterite-quartz assemblege and Sn-bearing skarns. Strucurally related to titanite.
  type = "tin",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4448},
    {type="item", name=e.calcium, amount=1, probability=.1502},
    {type="item", name=e.silicon, amount=1, probability=.1052},
    {type="fluid", name=e.oxygen, amount=1, probability=.2998},
  }}) end
if e.zinc then table.insert(define_ores, {
  name = "mushistonite",--	Oxidized zone of a tin deposit, replacing stannite.
  type = "tin",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4176},
    {type="item", name=e.copper, amount=1, probability=.1118},
    {type="item", name=e.zinc, amount=1, probability=.0920},
    {type="item", name=e.iron, amount=1, probability=.0196},
    {type="fluid", name=e.oxygen, amount=1, probability=.3377},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0213},
  }}) end
if e.calcium and e.boron then table.insert(define_ores, {
  name = "nordenskioldine",
  type = "tin",
  desc = "Named for Nils A. E. Nordenskiöld (1832-1901), Swedish mineralogist and Arctic explorer.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4295},
    {type="item", name=e.calcium, amount=1, probability=.1450},
    {type="item", name=e.boron, amount=1, probability=.0782},
    {type="fluid", name=e.oxygen, amount=1, probability=.3473},
  }}) end
table.insert(define_ores, {
  name = "ottemannite",--In zones of oxidation or secondary enrichment in hydrothermal tin deposits.
  type = "tin",
  desc = "Named for J. Ottemann, German mineralogist, Heidelberg, Germany.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.7117},
    {type="item", name=e.sulfur, amount=1, probability=.2883},
  }})
table.insert(define_ores, {
  name = "rhodostannite",--As a replacement (alteration) product of stannite.
  type = "tin",
  desc = "Named for its reddish color compared to stannite.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.7117},
    {type="item", name=e.sulfur, amount=1, probability=.2883},
    {type="item", name=e.copper, amount=1, probability=.7117},
    {type="item", name=e.iron, amount=1, probability=.2883},
  }})
table.insert(define_ores, {
  name = "romarchite",--Alteration product on pewter (tin) objects and found on veins containing native tin.
  type = "tin",
  desc = "Named for the initials of the Royal Ontario Museum (ROM), where the mineral was identified and for ARCHaeology because it was found on tin artifacts.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.8812},
    {type="fluid", name=e.oxygen, amount=1, probability=.1188},
  }})
if e.magnesium then table.insert(define_ores, {
  name = "schoenfliesite",--Secondary mineral in oxidized tin-bearing materials.
  type = "tin",
  desc = "Named for Arthur Moritz Schoenflies (1853-1928), professor of mathematics, University of Frankfurt.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4295},
    {type="item", name=e.magnesium, amount=1, probability=.1450},
    {type="fluid", name=e.oxygen, amount=1, probability=.0782},
    {type="fluid", name=e.hydrogen, amount=1, probability=.3473},
  }}) end
if e.antimony then table.insert(define_ores, {
  name = "schoenfliesite",--Gold and PGM placer deposits derived from sulfide-poor Alaskan-type intrusions (Clinopyroxinite-gabbro intrusions).
  type = "tin",
  desc = "Named after George Soros (1930-), well-known American financier, in recognition of his important support to science.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4865},
    {type="item", name=e.copper, amount=1, probability=.3472},
    {type="item", name=e.antimony, amount=1, probability=.1663},
  }}) end
if e.manganese then table.insert(define_ores, {
  name = "tetrawickmanite",
  type = "tin",
  desc = "Named as the tetragonal analog of wickmanite.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4306},
    {type="item", name=e.manganese, amount=1, probability=.1993},
    {type="fluid", name=e.oxygen, amount=1, probability=.3482},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0219},
  }}) end
-- table.insert(define_ores, {
--   name = "tin",
--   type = "tin",
--   desc = "A word of Old English origin, related to the Dutch tin and the German zinn.",
--   processing_results = {
--     {type="item", name=e.tin, amount=1},
--   }})
if e.silver then table.insert(define_ores, {
  name = "toyohaite",--Minor ore mineral.
  type = "tin",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4028},
    {type="item", name=e.sulfur, amount=1, probability=.2901},
    {type="item", name=e.silver, amount=1, probability=.2440},
    {type="item", name=e.iron, amount=1, probability=.0632},
  }}) end
if e.manganese and e.boron then table.insert(define_ores, {
  name = "tusionite",--Late-stage hydrothermal origin, rare in granite pegmatites, typically in miarolitic cavities.
  type = "tin",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4076},
    {type="item", name=e.manganese, amount=1, probability=.1886},
    {type="item", name=e.boron, amount=1, probability=.0742},
    {type="fluid", name=e.oxygen, amount=1, probability=.3296},
  }}) end
table.insert(define_ores, {
  name = "varlamoffite",--	Oxidized protions of stannite-cassiterite veins.
  type = "tin",
  desc = "Named for Nicolas Varlamoff (1910-1976), Belgian geologist who collected the mineral.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.6571},
    {type="item", name=e.iron, amount=1, probability=.1030},
    {type="fluid", name=e.oxygen, amount=1, probability=.2362},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0037},
  }})
if e.zinc then table.insert(define_ores, {
  name = "vismirnovite",--Oxidation of earlier tin sulfides in tin deposits.
  type = "tin",
  desc = "Named for Vladimir Ivanovich Smirnov (1910-1988), Moscow University, Moscow, Russia",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4149},
    {type="item", name=e.zinc, amount=1, probability=.2285},
    {type="fluid", name=e.oxygen, amount=1, probability=.3355},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0211},
  }}) end
if e.manganese then table.insert(define_ores, {
  name = "wickmanite",--Nephelin syenite dike and altered garnet skarn.
  type = "tin",
  desc = "Named for Franz-Erik Wickman (1915-), Swedish mineralogist, who studied the mineralogy of the Langban area.",
  processing_results = {
    {type="item", name=e.tin, amount=1, probability=.4306},
    {type="item", name=e.manganese, amount=1, probability=.1993},
    {type="fluid", name=e.oxygen, amount=1, probability=.3482},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0219},
  }}) end
end
if e.titanium then --https://webmineral.com/MySQL/mineral_chem.php?sym1=Ti&percent1=100&sym2=&percent2=&sym3=&percent3=&minmax=60&submit=Submit
table.insert(define_ores, {
  name = "anatase",--Usually secondary, derived from other Ti-bearing minerals. Common as a detrital mineral.
  type = "titanium",
  desc = "From the Greek, anatasis - *elongation.*",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.5994},
    {type="fluid", name=e.oxygen, amount=1, probability=.4006},
  }})
if e.magnesium then table.insert(define_ores, {
  name = "armalcolite",--Ti oxides associated with deep-seated intrusives.
  type = "titanium",
  desc = "Named after the three astronauts of Apollo 11: Neil A. ARMstrong, Edwin E. *Buzz* ALdrin, and Michael COLlins.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4605},
    {type="item", name=e.magnesium, amount=1, probability=.0877},
    {type="item", name=e.iron, amount=1, probability=.0671},
    {type="fluid", name=e.oxygen, amount=1, probability=.3847},
  }}) end
table.insert(define_ores, {
  name = "brookite",
  type = "titanium",
  desc = "Named after the English mineralogist, Henry James Brucke (1771-1857), a London mineralogist and wool trader.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.5994},
    {type="fluid", name=e.oxygen, amount=1, probability=.4006},
  }})
if e.sodium then table.insert(define_ores, {
  name = "freudenbergite",
  type = "titanium",
  desc = "Named for Wilhelm Freudenberg (1881-), German geologist, who studied the rocks of Odenwald, Germany, where the mineral was found.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4098},
    {type="item", name=e.iron, amount=1, probability=.1593},
    {type="item", name=e.sodium, amount=1, probability=.0656},
    {type="fluid", name=e.oxygen, amount=1, probability=.3652},
  }}) end
if e.barium then table.insert(define_ores, {
  name = "henrymeyerite",--From a vug in a carbonatite vein. Late stage mineral in carbonitite rocks. Hollandite group
  type = "titanium",
  desc = "Named for Prof. Henry. O. A. Meyer (1937-1995).",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4273},
    {type="item", name=e.barium, amount=1, probability=.1751},
    {type="item", name=e.iron, amount=1, probability=.0712},
    {type="fluid", name=e.oxygen, amount=1, probability=.3264},
  }}) end
table.insert(define_ores, {
  name = "hongquiite",--Found in platinum ores associated with high-temperature rocks of the garnet-hornblende-pyroxenite facies.
  type = "titanium",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.7495},
    {type="fluid", name=e.oxygen, amount=1, probability=.2505},
  }})
--IMA2000-016 
--IMA2007-058
if e.barium and e.potassium then table.insert(define_ores, {
  name = "jeppeite",--In a large, weathered lamproite plug.
  type = "titanium",
  desc = "Named for John Frederick Biccard Jeppe (1920-), geologist of Nedlands, Western Australia, discoverer of the mineral.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4180},
    {type="item", name=e.barium, amount=1, probability=.1498},
    {type="item", name=e.potassium, amount=1, probability=.0731},
    {type="item", name=e.iron, amount=1, probability=.0348},
    {type="fluid", name=e.oxygen, amount=1, probability=.3242},
  }}) end
if e.vanadium then table.insert(define_ores, {
  name = "khamrabaevite",--In amygdaloidal baasaltic porphyries. On the outer portions of cubic suessite crystals.
  type = "titanium",
  desc = "Named for Ibragim Khamrabaevich Khamrabaeva (1920-), Director, Institute of Geology and Geophysics, Tashkent, Uzbekistan.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4663},
    {type="item", name=e.vanadium, amount=1, probability=.2481},
    {type="item", name=e.carbon, amount=1, probability=.1950},
    {type="item", name=e.iron, amount=1, probability=.0907},
  }}) end
-- if e.barium and e.potassium then table.insert(define_ores, {
--   name = "kleberite",--Heavy mineral fraction from Tertiary sediments. Data is not correct, a doubtful species.
--   type = "titanium",
--   desc = "	Named for Will Kleber (1906-1970), Humboldt University, Berlin.",
--   processing_results = {

--   }}) end
if e.zinc and e.manganese and e.lead and e.sodium and e.potassium then table.insert(define_ores, {
  name = "landauite",--Accessory mineral in albite veins cutting syenite pegmatites.
  type = "titanium",
  desc = "Named for Lev Davidovich Landau (1908-1968), noted Russian physicist.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.4343},
    {type="item", name=e.zinc, amount=1, probability=.0869},
    {type="item", name=e.iron, amount=1, probability=.0581},
    {type="item", name=e.manganese, amount=1, probability=.0317},
    {type="item", name=e.lead, amount=1, probability=.0239},
    {type="item", name=e.sodium, amount=1, probability=.0093},
    {type="item", name=e.potassium, amount=1, probability=.0045},
    {type="fluid", name=e.oxygen, amount=1, probability=.3512},
  }}) end
--Osbornite , from meteorites :O
table.insert(define_ores, {
  name = "rutile",--High pressure and temperature accessory mineral in ignous rocks. Common detrital mineral.
  type = "titanium",
  desc = "From the Latin, rutilus - *reddish.*",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.5994},
    {type="fluid", name=e.oxygen, amount=1, probability=.4006},
  }})
if e.magnesium and e.aluminum and e.zirconium then table.insert(define_ores, {
  name = "tistarite",--Found as one subhedral crystal in a cluster of micrometer-sized refractory grains along with khamrabaevite (TiC), rutile, and corundum crystals within a chondrule. Corundum group.
  type = "titanium",
  desc = "Named after the composition *Ti* and the word *star,* implying that this new refractory mineral is among the first solids formed in the solar system.",
  processing_results = {
    {type="item", name=e.titanium, amount=1, probability=.6377},
    {type="item", name=e.magnesium, amount=1, probability=.0119},
    {type="item", name=e.aluminum, amount=1, probability=.0076},
    {type="item", name=e.zirconium, amount=1, probability=.0064},
    {type="fluid", name=e.oxygen, amount=1, probability=.3364},
  }}) end
-- table.insert(define_ores, {
--   name = "titanium",
--   type = "titanium",
--   desc = "Named after the element which is named after the Titans, sons of the Earth goddess.",
--   processing_results = {
--     {type="item", name=e.titanium, amount=1, probability=.6377},
--     {type="item", name=e.magnesium, amount=1, probability=.0119},
--     {type="item", name=e.aluminum, amount=1, probability=.0076},
--     {type="item", name=e.zirconium, amount=1, probability=.0064},
--     {type="fluid", name=e.oxygen, amount=1, probability=.3364},
--   }})
end
if e.molybdenum then --https://webmineral.com/MySQL/mineral_chem.php?sym1=Mo&percent1=100&sym2=&percent2=&sym3=&percent3=&minmax=60&submit=Submit
table.insert(define_ores, {
  name = "bamfordite",--In tungsten-molybdenum-bismuth deposits formed by the oxidation of molybdenite.
  type = "molybdenum",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4649},
    {type="item", name=e.iron, amount=1, probability=.1353},
    {type="fluid", name=e.oxygen, amount=1, probability=.3876},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0122},
  }})
table.insert(define_ores, {
  name = "ferrimolybdite",--Molybdenite mines..
  type = "molybdenum",
  desc = "Named from its chemical composition.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4011},
    {type="item", name=e.iron, amount=1, probability=.1556},
    {type="fluid", name=e.oxygen, amount=1, probability=.4236},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0197},
  }})
--hexamolybdenum meteorite
table.insert(define_ores, {
  name = "ilsemannite",--Alteration product of molybdenite.
  type = "molybdenum",
  desc = "Named for J. C. Ilsemann (1727-1822), mining commissioner at Clausthal, Harz, Germany.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.6634},
    {type="fluid", name=e.oxygen, amount=1, probability=.3319},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0046},
  }})
table.insert(define_ores, {
  name = "jordisite",--As veinlets and coatings of probable moderate to low-temperature hydrothermal origin.
  type = "molybdenum",
  base_density = 0.5,
  desc = "For Eduard Friedrich Alexander Jordis (1868-1917), colloidal chemist.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.5994},
    {type="item", name=e.sulfur, amount=1, probability=.4006},
  }})
table.insert(define_ores, {
  name = "kamiokite",--In quartz-molybdenite stockwork veins associated with granite porphyry dikes.
  type = "molybdenum",
  desc = "Named for the locality.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.5456},
    {type="item", name=e.iron, amount=1, probability=.2117},
    {type="fluid", name=e.oxygen, amount=1, probability=.2426},
  }})
if e.calcium and e.phosphorus then table.insert(define_ores, {
  name = "melkovite",--olybdenite-fluorite deposit.
  type = "molybdenum",
  desc = "Named for Vyacheslav Gavrilovich Melkov (1911-1991), Russian mineralogist.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4088},
    {type="item", name=e.iron, amount=1, probability=.0595},
    {type="item", name=e.calcium, amount=1, probability=.0427},
    {type="item", name=e.phosphorus, amount=1, probability=.0330},
    {type="fluid", name=e.oxygen, amount=1, probability=.4431},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0129},
  }}) end
if e.calcium and e.phosphorus then table.insert(define_ores, {
  name = "mendozavilite",--Mo-rich pegmatite.
  type = "molybdenum",
  desc = "Named for H. Mendoza Avila, Mexican geologist, who found the mineral.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4154},
    {type="item", name=e.iron, amount=1, probability=.0907},
    {type="item", name=e.calcium, amount=1, probability=.0369},
    {type="item", name=e.phosphorus, amount=1, probability=.0335},
    {type="item", name=e.sodium, amount=1, probability=.0075},
    {type="item", name=e.strontium, amount=1, probability=.0047},
    {type="item", name=e.magnesium, amount=1, probability=.0026},
    {type="fluid", name=e.oxygen, amount=1, probability=.3983},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0104},
  }}) end
table.insert(define_ores, {
  name = "molybdenite",--High temperature hydrothermal veins. Important in disseminated deposits of the porphyry type.
  type = "molybdenum",
  base_density = 0.5,
  desc = "Greek, molybdos = *lead.*",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.5994},
    {type="item", name=e.sulfur, amount=1, probability=.4006},
  }})
table.insert(define_ores, {
  name = "molybdite",--	In cavities in topaz-quartz greisen.
  type = "molybdenum",
  base_density = 0.5,
  desc = "Named for the composition.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.6665},
    {type="fluid", name=e.oxygen, amount=1, probability=.3335},
  }})
--Monipite meteorite
table.insert(define_ores, {
  name = "mourite",--U-Mo deposits.
  type = "molybdenum",
  desc = "Named for its composition (Mo, Uranium).",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4443},
    {type="item", name=e.uranium, amount=1, probability=.2204},
    {type="fluid", name=e.oxygen, amount=1, probability=.3260},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0093},
  }})
if e.calcium then table.insert(define_ores, {
  name = "powellite",
  type = "molybdenum",
  desc = "Named after the American geologist, John Westly Powell (1834-1902).",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.4797},
    {type="item", name=e.calcium, amount=1, probability=.2004},
    {type="fluid", name=e.oxygen, amount=1, probability=.3200},
  }}) end
table.insert(define_ores, {
  name = "sidwillite",--Oxidation product of jordisite in a quartz vein.
  type = "molybdenum",
  desc = "Named for Sidney Arthur Williams (1933- ), American mineralogist and petrologist of Douglas, Arizona, USA,",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.5331},
    {type="fluid", name=e.oxygen, amount=1, probability=.4445},
    {type="fluid", name=e.hydrogen, amount=1, probability=.0224},
  }})
table.insert(define_ores, {
  name = "tugarinovite",--Formed as a primary mineral, by metasomatism in a reducing environment deficient in sulfur.
  type = "molybdenum",
  desc = "Named for Aleksei Ivanovich Tugarinov (1947-), geochemist, Vernadskii Institute, Moscow, Russia.",
  processing_results = {
    {type="item", name=e.molybdenum, amount=1, probability=.7499},
    {type="fluid", name=e.oxygen, amount=1, probability=.2501},
  }})

end


-- if e.palladium then
-- if e.tin then table.insert(define_ores, {
--   name = "stannopalladinite",--In sulfide Cu-Ni ores intergrown with niggliite.
--   type = "palladium",
--   desc = "Named for the composition.",
--   processing_results = {
--     {type="item", name=e.palladium, amount=1, probability=.4565},
--     {type="item", name=e.tin, amount=1, probability=.4526},
--     {type="item", name=e.copper, amount=1, probability=.0909},
--   }}) end
-- end

if e.antimony then
if e.lead and e.silver then table.insert(define_ores, {
  name = "stistaite",
  type = "tin",
  desc = "For Andor von Semsey (1833-1923), a Hungarian nobleman, who was also an amateur mineralogist.",
  processing_results = {
    {type="item", name=e.antimony, amount=1, probability=.4185},
    {type="item", name=e.lead, amount=1, probability=.2374},
    {type="item", name=e.sulfur, amount=1, probability=.2205},
    {type="item", name=e.silver, amount=1, probability=.1236},
  }}) end
if e.tin then table.insert(define_ores, {
  name = "stistaite",--In heavy mineral concentrates from placer deposits.
  type = "tin",
  desc = "Named for the composition of stibium (antimony) and stannum (tin).",
  processing_results = {
    {type="item", name=e.antimony, amount=1, probability=.5063},
    {type="item", name=e.tin, amount=1, probability=.4937},
  }}) end
--https://webmineral.com/MySQL/mineral_chem.php?sym1=Sb&percent1=100&sym2=&percent2=&sym3=&percent3=&minmax=60&submit=Submit
end

-- if e.selenium then
-- if e.molybdenum then table.insert(define_ores, {
--   name = "drysdallite",--In the oxidation zone of a uranium deposit in a talc schist.
--   type = "molybdenum",
--   desc = "For A.R. Drysdall, Director, Geological Survey of Zambia.",
--   processing_results = {
--     {type="item", name=e.selenium, amount=1, probability=.5140},
--     {type="item", name=e.molybdenum, amount=1, probability=.4164},
--     {type="item", name=e.sulfur, amount=1, probability=.0696},
--   }}) end
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
if ore.type ~= "coal" and ore.type ~= "uranium" then --These ores don't get smelting recipes
    data:extend({
    {--Smelting
      type = "recipe",
      name = ore.name .. "-smelting",
      icon = ore.icon .. ".png",
      icon_size = 64,

      category = "smelting",
      enabled = true,
      energy_required = 1,
      ingredients = {{type="item", name=ore.name, amount=20}},
      results = {{type="item", name=ore.ore_type_smelted_result, amount=1}}, --Gets the ore type for smelting
    },
  })
  end
end