-- data.raw.recipe["iron-plate"].enabled = false
-- data.raw.recipe["copper-plate"].enabled = false
--Tier 0 smelting recipes
local smelting_recipes = {
  {input = "azurite", output = "copper-plate"},
  {input = "bornite", output = "copper-plate"},
  {input = "chalcocite", output = "copper-plate"},
  {input = "chalcopyrite", output = "copper-plate"},
  {input = "chrysocolla", output = "copper-plate"},
  {input = "covellite", output = "copper-plate"},
  {input = "cuprite", output = "copper-plate"},
  {input = "dioptase", output = "copper-plate"},
  {input = "djurleite", output = "copper-plate"},
  {input = "enargite", output = "copper-plate"},
  {input = "malachite", output = "copper-plate"},
  {input = "tennantite", output = "copper-plate"},
  {input = "tenorite", output = "copper-plate"},
  {input = "tetrahedite", output = "copper-plate"},
-- Iron
  {input = "akaganeite", output = "iron-plate"},
  {input = "ankerite", output = "iron-plate"},
  {input = "cronstedtite", output = "iron-plate"},
  {input = "ferrihydrite", output = "iron-plate"},
  {input = "goethite", output = "iron-plate"},
  {input = "greenalite", output = "iron-plate"},
  {input = "greigite", output = "iron-plate"},
  {input = "grunerite", output = "iron-plate"},
  {input = "hematite", output = "iron-plate"},
  {input = "lepidocrocite", output = "iron-plate"},
  {input = "macaulayite", output = "iron-plate"},
  {input = "magnesioferrite", output = "iron-plate"},
  {input = "magnetite", output = "iron-plate"},
  {input = "minnesotaite", output = "iron-plate"},
  {input = "pyrite", output = "iron-plate"},
  {input = "pyrrhotite", output = "iron-plate"},
  {input = "roaldite", output = "iron-plate"},
  {input = "schwertmannite", output = "iron-plate"},
  {input = "siderite", output = "iron-plate"},
  {input = "stilpnomelane", output = "iron-plate"},
  {input = "taenite", output = "iron-plate"},
  {input = "trevorite", output = "iron-plate"},
  {input = "troilite", output = "iron-plate"},
  {input = "wustite", output = "iron-plate"},
}
for _, recipe in ipairs(smelting_recipes, smelting_recipes2) do
  local input_item = recipe.input
  local output_item = recipe.output
  data:extend({
      {
          type = "recipe",
          name = input_item .. "-smelting",
          category = "smelting",
          enabled = true,
          energy_required = 32,
          ingredients = {{input_item, 20}}, 
          results =
          {
            {type = "item", name = output_item, amount = 1, probability = 0.5},
          }
      }
  })
end

local recipeNames2 = {}
if data.raw["recipe"]["azurite-smelting-2"] then
    table.insert(recipeNames2, "azurite-smelting-2")
end
if data.raw["recipe"]["bornite-smelting-2"] then
    table.insert(recipeNames2, "bornite-smelting-2")
end
if data.raw["recipe"]["chalcocite-smelting-2"] then
    table.insert(recipeNames2, "chalcocite-smelting-2")
end
if data.raw["recipe"]["chalcopyrite-smelting-2"] then
    table.insert(recipeNames2, "chalcopyrite-smelting-2")
end
if data.raw["recipe"]["chrysocolla-smelting-2"] then
    table.insert(recipeNames2, "chrysocolla-smelting-2")
end
if data.raw["recipe"]["covellite-smelting-2"] then
    table.insert(recipeNames2, "covellite-smelting-2")
end
if data.raw["recipe"]["cuprite-smelting-2"] then
  table.insert(recipeNames2, "cuprite-smelting-2")
end
if data.raw["recipe"]["dioptase-smelting-2"] then
  table.insert(recipeNames2, "dioptase-smelting-2")
end
if data.raw["recipe"]["djurleite-smelting-2"] then
  table.insert(recipeNames2, "djurleite-smelting-2")
end
if data.raw["recipe"]["enargite-smelting-2"] then
  table.insert(recipeNames2, "enargite-smelting-2")
end
if data.raw["recipe"]["malachite-smelting-2"] then
  table.insert(recipeNames2, "malachite-smelting-2")
end
if data.raw["recipe"]["tennantite-smelting-2"] then
  table.insert(recipeNames2, "tennantite-smelting-2")
end
if data.raw["recipe"]["tenorite-smelting-2"] then
  table.insert(recipeNames2, "tenorite-smelting-2")
end
if data.raw["recipe"]["tetrahedite-smelting-2"] then
  table.insert(recipeNames2, "tetrahedite-smelting-2")
end
if data.raw["recipe"]["akaganeite-smelting-2"] then
  table.insert(recipeNames2, "akaganeite-smelting-2")
end
if data.raw["recipe"]["aankerite-smelting-2"] then
  table.insert(recipeNames2, "aankerite-smelting-2")
end
if data.raw["recipe"]["cronstedtite-smelting-2"] then
  table.insert(recipeNames2, "cronstedtite-smelting-2")
end
if data.raw["recipe"]["ferrihydrite-smelting-2"] then
  table.insert(recipeNames2, "ferrihydrite-smelting-2")
end
if data.raw["recipe"]["goethite-smelting-2"] then
  table.insert(recipeNames2, "goethite-smelting-2")
end
if data.raw["recipe"]["greenalite-smelting-2"] then
  table.insert(recipeNames2, "greenalite-smelting-2")
end
if data.raw["recipe"]["greigite-smelting-2"] then
  table.insert(recipeNames2, "greigite-smelting-2")
end
if data.raw["recipe"]["grunerite-smelting-2"] then
  table.insert(recipeNames2, "grunerite-smelting-2")
end
if data.raw["recipe"]["hematite-smelting-2"] then
  table.insert(recipeNames2, "hematite-smelting-2")
end
if data.raw["recipe"]["lepidocrocite-smelting-2"] then
  table.insert(recipeNames2, "lepidocrocite-smelting-2")
end
if data.raw["recipe"]["macaulayite-smelting-2"] then
  table.insert(recipeNames2, "macaulayite-smelting-2")
end
if data.raw["recipe"]["magnesioferrite-smelting-2"] then
  table.insert(recipeNames2, "magnesioferrite-smelting-2")
end
if data.raw["recipe"]["magnetite-smelting-2"] then
  table.insert(recipeNames2, "magnetite-smelting-2")
end
if data.raw["recipe"]["minnesotaite-smelting-2"] then
  table.insert(recipeNames2, "minnesotaite-smelting-2")
end
if data.raw["recipe"]["pyrite-smelting-2"] then
  table.insert(recipeNames2, "pyrite-smelting-2")
end
if data.raw["recipe"]["pyrrhotite-smelting-2"] then
  table.insert(recipeNames2, "pyrrhotite-smelting-2")
end
if data.raw["recipe"]["roaldite-smelting-2"] then
  table.insert(recipeNames2, "roaldite-smelting-2")
end
if data.raw["recipe"]["schwertmannite-smelting-2"] then
  table.insert(recipeNames2, "schwertmannite-smelting-2")
end
if data.raw["recipe"]["siderite-smelting-2"] then
  table.insert(recipeNames2, "siderite-smelting-2")
end
if data.raw["recipe"]["stilpnomelane-smelting-2"] then
  table.insert(recipeNames2, "stilpnomelane-smelting-2")
end
if data.raw["recipe"]["taenite-smelting-2"] then
  table.insert(recipeNames2, "taenite-smelting-2")
end
if data.raw["recipe"]["trevorite-smelting-2"] then
  table.insert(recipeNames2, "trevorite-smelting-2")
end
if data.raw["recipe"]["troilite-smelting-2"] then
  table.insert(recipeNames2, "troilite-smelting-2")
end
if data.raw["recipe"]["wustite-smelting-2"] then
  table.insert(recipeNames2, "wustite-smelting-2")
end

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

for _, recipeName in ipairs(recipeNames2) do
  table.insert(data.raw["technology"]["ore-processing-2"].effects, {type = "unlock-recipe", recipe = recipeName})
end