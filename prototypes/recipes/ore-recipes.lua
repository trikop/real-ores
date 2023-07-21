enabledOresIron = {}
if data.raw["recipe"]["akaganeite-smelting-2"] then table.insert(enabledOresIron, "akaganeite", output = "iron-plate") end
if data.raw["recipe"]["aankerite-smelting-2"] then table.insert(enabledOresIron, "aankerite", output = "iron-plate") end
if data.raw["recipe"]["cronstedtite-smelting-2"] then table.insert(enabledOresIron, "cronstedtite", output = "iron-plate") end
if data.raw["recipe"]["ferrihydrite-smelting-2"] then table.insert(enabledOresIron, "ferrihydrite", output = "iron-plate") end
if data.raw["recipe"]["goethite-smelting-2"] then table.insert(enabledOresIron, "goethite", output = "iron-plate") end
if data.raw["recipe"]["greenalite-smelting-2"] then table.insert(enabledOresIron, "greenalite", output = "iron-plate") end
if data.raw["recipe"]["greigite-smelting-2"] then table.insert(enabledOresIron, "greigite", output = "iron-plate") end
if data.raw["recipe"]["grunerite-smelting-2"] then table.insert(enabledOresIron, "grunerite", output = "iron-plate") end
if data.raw["recipe"]["hematite-smelting-2"] then table.insert(enabledOresIron, "hematite", output = "iron-plate") end
if data.raw["recipe"]["lepidocrocite-smelting-2"] then table.insert(enabledOresIron, "lepidocrocite", output = "iron-plate") end
if data.raw["recipe"]["macaulayite-smelting-2"] then table.insert(enabledOresIron, "macaulayite", output = "iron-plate") end
if data.raw["recipe"]["magnesioferrite-smelting-2"] then table.insert(enabledOresIron, "magnesioferrite", output = "iron-plate") end
if data.raw["recipe"]["magnetite-smelting-2"] then table.insert(enabledOresIron, "magnetite", output = "iron-plate") end
if data.raw["recipe"]["minnesotaite-smelting-2"] then table.insert(enabledOresIron, "minnesotaite", output = "iron-plate") end
if data.raw["recipe"]["pyrite-smelting-2"] then table.insert(enabledOresIron, "pyrite", output = "iron-plate") end
if data.raw["recipe"]["pyrrhotite-smelting-2"] then table.insert(enabledOresIron, "pyrrhotite", output = "iron-plate") end
if data.raw["recipe"]["roaldite-smelting-2"] then table.insert(enabledOresIron, "roaldite", output = "iron-plate") end
if data.raw["recipe"]["schwertmannite-smelting-2"] then table.insert(enabledOresIron, "schwertmannite", output = "iron-plate") end
if data.raw["recipe"]["siderite-smelting-2"] then table.insert(enabledOresIron, "siderite", output = "iron-plate") end
if data.raw["recipe"]["stilpnomelane-smelting-2"] then table.insert(enabledOresIron, "stilpnomelane", output = "iron-plate") end
if data.raw["recipe"]["taenite-smelting-2"] then table.insert(enabledOresIron, "taenite", output = "iron-plate") end
if data.raw["recipe"]["trevorite-smelting-2"] then table.insert(enabledOresIron, "trevorite", output = "iron-plate") end
if data.raw["recipe"]["troilite-smelting-2"] then table.insert(enabledOresIron, "troilite", output = "iron-plate") end
if data.raw["recipe"]["wustite-smelting-2"] then table.insert(enabledOresIron, "wustite", output = "iron-plate") end
enabledOresCopper = {}
if data.raw["recipe"]["azurite-smelting-2"] then table.insert(enabledOresCopper, "azurite", output = "copper-plate") end
if data.raw["recipe"]["bornite-smelting-2"] then table.insert(enabledOresCopper, "bornite", , output = "copper-plate") end
if data.raw["recipe"]["chalcocite-smelting-2"] then table.insert(enabledOresCopper, "chalcocite", , output = "copper-plate") end
if data.raw["recipe"]["chalcopyrite-smelting-2"] then table.insert(enabledOresCopper, "chalcopyrite", , output = "copper-plate") end
if data.raw["recipe"]["chrysocolla-smelting-2"] then table.insert(enabledOresCopper, "chrysocolla", , output = "copper-plate") end
if data.raw["recipe"]["covellite-smelting-2"] then table.insert(enabledOresCopper, "covellite", , output = "copper-plate") end
if data.raw["recipe"]["cuprite-smelting-2"] then table.insert(enabledOresCopper, "cuprite", , output = "copper-plate") end
if data.raw["recipe"]["dioptase-smelting-2"] then table.insert(enabledOresCopper, "dioptase", , output = "copper-plate") end
if data.raw["recipe"]["djurleite-smelting-2"] then table.insert(enabledOresCopper, "djurleite", , output = "copper-plate") end
if data.raw["recipe"]["enargite-smelting-2"] then table.insert(enabledOresCopper, "enargite", , output = "copper-plate") end
if data.raw["recipe"]["malachite-smelting-2"] then table.insert(enabledOresCopper, "malachite", , output = "copper-plate") end
if data.raw["recipe"]["tennantite-smelting-2"] then table.insert(enabledOresCopper, "tennantite", , output = "copper-plate") end
if data.raw["recipe"]["tenorite-smelting-2"] then table.insert(enabledOresCopper, "tenorite", , output = "copper-plate") end
if data.raw["recipe"]["tetrahedite-smelting-2"] then table.insert(enabledOresCopper, "tetrahedite", , output = "copper-plate") end

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

for _, recipeName in ipairs(enabledOresIron and enabledOresCopper) do
  table.insert(data.raw["technology"]["ore-processing-2"].effects, {type = "unlock-recipe", recipe = recipeName .. "-smelting-2"})
end
for _, recipeName in ipairs(enabledOresIron) do
  data:extend({
    {
      type = "recipe",
      name = recipeName .. "-smelting-1",
      icon = "__base__/graphics/icons/iron-plate.png",
      icon_size = 64,
      category = "smelting",
      enabled = true,
      energy_required = 32,
      ingredients = {{recipeName, 20}}, 
      results = {
        {type = "item", name = "iron-plate", amount = 1, probability = 0.5},
      }
    },
    {
      type = "recipe",
      name = recipeName .. "-crushing-1",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      category = "crushing",
      subgroup = "crushing",
      order = "a-" .. recipeName,
      enabled = true,
      energy_required = 32,
      ingredients = {{recipeName, 20}}, 
      results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.7}, {type = "item", name = "stone", amount = 1, probability = 0.3}
      }
    }
  })
end
for _, recipeName in ipairs(enabledOresCopper) do
  data:extend({
    {
      type = "recipe",
      name = recipeName .. "-smelting-1",
      icon = "__base__/graphics/icons/copper-plate.png",
      icon_size = 64,
      category = "smelting",
      enabled = true,
      energy_required = 32,
      ingredients = {{recipeName, 20}}, 
      results = {
        {type = "item", name = "copper-plate", amount = 1, probability = 0.5},
      }
    },
    {
      type = "recipe",
      name = recipeName .. "-crushing-1",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      category = "crushing",
      subgroup = "crushing",
      order = "b-" .. recipeName,
      enabled = true,
      energy_required = 32,
      ingredients = {{recipeName, 20}}, 
      results = {
        {type = "item", name = "iron-ore", amount = 1, probability = 0.7}, {type = "item", name = "stone", amount = 1, probability = 0.3}
      }
    }
  })
end