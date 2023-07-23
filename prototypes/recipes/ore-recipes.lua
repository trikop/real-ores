enabledOres = {}
if data.raw["recipe"]["akaganeite-smelting-2"]      then table.insert(enabledOres, {input = "akaganeite", output = "iron"}) end
if data.raw["recipe"]["aankerite-smelting-2"]       then table.insert(enabledOres, {input = "aankerite", output = "iron"}) end
if data.raw["recipe"]["cronstedtite-smelting-2"]    then table.insert(enabledOres, {input = "cronstedtite", output = "iron"}) end
if data.raw["recipe"]["ferrihydrite-smelting-2"]    then table.insert(enabledOres, {input = "ferrihydrite", output = "iron"}) end
if data.raw["recipe"]["goethite-smelting-2"]        then table.insert(enabledOres, {input = "goethite", output = "iron"}) end
if data.raw["recipe"]["greenalite-smelting-2"]      then table.insert(enabledOres, {input = "greenalite", output = "iron"}) end
if data.raw["recipe"]["greigite-smelting-2"]        then table.insert(enabledOres, {input = "greigite", output = "iron"}) end
if data.raw["recipe"]["grunerite-smelting-2"]       then table.insert(enabledOres, {input = "grunerite", output = "iron"}) end
if data.raw["recipe"]["hematite-smelting-2"]        then table.insert(enabledOres, {input = "hematite", output = "iron"}) end
if data.raw["recipe"]["lepidocrocite-smelting-2"]   then table.insert(enabledOres, {input = "lepidocrocite", output = "iron"}) end
if data.raw["recipe"]["macaulayite-smelting-2"]     then table.insert(enabledOres, {input = "macaulayite", output = "iron"}) end
if data.raw["recipe"]["magnesioferrite-smelting-2"] then table.insert(enabledOres, {input = "magnesioferrite", output = "iron"}) end
if data.raw["recipe"]["magnetite-smelting-2"]       then table.insert(enabledOres, {input = "magnetite", output = "iron"}) end
if data.raw["recipe"]["minnesotaite-smelting-2"]    then table.insert(enabledOres, {input = "minnesotaite", output = "iron"}) end
if data.raw["recipe"]["pyrite-smelting-2"]          then table.insert(enabledOres, {input = "pyrite", output = "iron"}) end
if data.raw["recipe"]["pyrrhotite-smelting-2"]      then table.insert(enabledOres, {input = "pyrrhotite", output = "iron"}) end
if data.raw["recipe"]["roaldite-smelting-2"]        then table.insert(enabledOres, {input = "roaldite", output = "iron"}) end
if data.raw["recipe"]["schwertmannite-smelting-2"]  then table.insert(enabledOres, {input = "schwertmannite", output = "iron"}) end
if data.raw["recipe"]["siderite-smelting-2"]        then table.insert(enabledOres, {input = "siderite", output = "iron"}) end
if data.raw["recipe"]["stilpnomelane-smelting-2"]   then table.insert(enabledOres, {input = "stilpnomelane", output = "iron"}) end
if data.raw["recipe"]["taenite-smelting-2"]         then table.insert(enabledOres, {input = "taenite", output = "iron"}) end
if data.raw["recipe"]["trevorite-smelting-2"]       then table.insert(enabledOres, {input = "trevorite", output = "iron"}) end
if data.raw["recipe"]["troilite-smelting-2"]        then table.insert(enabledOres, {input = "troilite", output = "iron"}) end
if data.raw["recipe"]["wustite-smelting-2"]         then table.insert(enabledOres, {input = "wustite", output = "iron"}) end
if data.raw["recipe"]["azurite-smelting-2"]         then table.insert(enabledOres, {input = "azurite", output = "copper"}) end
if data.raw["recipe"]["bornite-smelting-2"]         then table.insert(enabledOres, {input = "bornite", output = "copper"}) end
if data.raw["recipe"]["chalcocite-smelting-2"]      then table.insert(enabledOres, {input = "chalcocite", output = "copper"}) end
if data.raw["recipe"]["chalcopyrite-smelting-2"]    then table.insert(enabledOres, {input = "chalcopyrite", output = "copper"}) end
if data.raw["recipe"]["chrysocolla-smelting-2"]     then table.insert(enabledOres, {input = "chrysocolla", output = "copper"}) end
if data.raw["recipe"]["covellite-smelting-2"]       then table.insert(enabledOres, {input = "covellite", output = "copper"}) end
if data.raw["recipe"]["cuprite-smelting-2"]         then table.insert(enabledOres, {input = "cuprite", output = "copper"}) end
if data.raw["recipe"]["dioptase-smelting-2"]        then table.insert(enabledOres, {input = "dioptase", output = "copper"}) end
if data.raw["recipe"]["djurleite-smelting-2"]       then table.insert(enabledOres, {input = "djurleite", output = "copper"}) end
if data.raw["recipe"]["enargite-smelting-2"]        then table.insert(enabledOres, {input = "enargite", output = "copper"}) end
if data.raw["recipe"]["malachite-smelting-2"]       then table.insert(enabledOres, {input = "malachite", output = "copper"}) end
if data.raw["recipe"]["tennantite-smelting-2"]      then table.insert(enabledOres, {input = "tennantite", output = "copper"}) end
if data.raw["recipe"]["tenorite-smelting-2"]        then table.insert(enabledOres, {input = "tenorite", output = "copper"}) end
if data.raw["recipe"]["tetrahedite-smelting-2"]     then table.insert(enabledOres, {input = "tetrahedite", output = "copper"}) end

local prerequisitesop1 = {}
if mods.Krastorio2 then
  prerequisitesop1 = {"mining-drill"}
else
  prerequisitesop1 = {"automation"}
end

data:extend({
{
  type = "technology",
  name = "ore-processing-1",
  icon = "__base__/graphics/icons/iron-ore.png",
  icon_size = 64,
  effects = {},
  unit = {
    count = 30, time = 10,
    ingredients = {{"automation-science-pack", 1}},
  },
  prerequisites = prerequisitesop1,
},
{
  type = "technology",
  name = "ore-processing-2",
  icon = "__base__/graphics/icons/iron-ore.png",
  icon_size = 64,
  effects = {},
  unit = {
    count = 50, time = 10,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
  },
  prerequisites = {"oil-processing", "ore-processing-1"},
}
})
for _, enabledOre in ipairs(enabledOres) do
  table.insert(data.raw["technology"]["ore-processing-2"].effects, {type = "unlock-recipe", recipe = enabledOre.input .. "-smelting-2"})
end

for _, enabledOre in ipairs(enabledOres) do
  local iconPathOre = "__base__/graphics/icons/" .. enabledOre.output .. "-ore.png"
  local iconPathPlate = "__base__/graphics/icons/" .. enabledOre.output .. "-plate.png"
  data:extend({
    {
      type = "recipe",
      name = enabledOre.input .. "-smelting-1",
      icon = iconPathPlate,
      icon_size = 64,
      category = "smelting",
      order = "b-" .. enabledOre.input,
      enabled = true,
      energy_required = 32,
      ingredients = {{enabledOre.input, 20}}, 
      results = {
        {type = "item", name = enabledOre.output .. "-plate", amount = 1, probability = 0.5},
      }
    },
    {
      type = "item",
      name = "crushed-" .. enabledOre.input,
      icon_size = 64,
      icon_mipmaps = 4,
      icon = iconPathOre,
      pictures = {
        {filename = iconPathOre, size=64, scale=0.125},
        {filename = iconPathOre, size=64, scale=0.125},
        {filename = iconPathOre, size=64, scale=0.125},
        {filename = iconPathOre, size=64, scale=0.125},
      }, 
      subgroup = "crushed-ore",
      order = "c-a-" .. enabledOre.input,
      stack_size = 20
    },
    {
      type = "recipe",
      name = enabledOre.input .. "-crushed-smelting",
      icon = iconPathOre,
      icon_size = 64,
      category = "crushed-ore",
      order = "a-" .. enabledOre.output .. "-" .. enabledOre.input,
      enabled = true,
      energy_required = 6,
      ingredients = {{enabledOre.input, 1}}, 
      results = {
        {type = "item", name = enabledOre.output .. "-plate", amount = 1}
      }
    },
    {
      type = "recipe",
      name = enabledOre.input .. "-crushing-1",
      icon = iconPathOre,
      icon_size = 64,
      category = "crushing",
      subgroup = "crushing",
      order = "b-" .. enabledOre.output .. "-" .. enabledOre.input,
      enabled = true,
      energy_required = 10,
      ingredients = {{enabledOre.input, 20}}, 
      results = {
        {type = "item", name = "crushed-" .. enabledOre.input, amount = 1, probability = 0.7}, {type = "item", name = "stone", amount = 1, probability = 0.3}
      }
    }
  })
end