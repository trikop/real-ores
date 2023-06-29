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










local recipeNames = {}

if data.raw["recipe"]["azurite-smelting-2"] then
    table.insert(recipeNames, "azurite-smelting-2")
end
if data.raw["recipe"]["bornite-smelting-2"] then
    table.insert(recipeNames, "bornite-smelting-2")
end
if data.raw["recipe"]["chalcocite-smelting-2"] then
    table.insert(recipeNames, "chalcocite-smelting-2")
end
if data.raw["recipe"]["chalcopyrite-smelting-2"] then
    table.insert(recipeNames, "chalcopyrite-smelting-2")
end
if data.raw["recipe"]["chrysocolla-smelting-2"] then
    table.insert(recipeNames, "chrysocolla-smelting-2")
end
if data.raw["recipe"]["covellite-smelting-2"] then
    table.insert(recipeNames, "covellite-smelting-2")
end



{
  {type = "unlock-recipe", recipe = "azurite-smelting-2"},
  {type = "unlock-recipe", recipe = "bornite-smelting-2"},
  {type = "unlock-recipe", recipe = "chalcocite-smelting-2"},
  {type = "unlock-recipe", recipe = "chalcopyrite-smelting-2"},
  {type = "unlock-recipe", recipe = "chrysocolla-smelting-2"},
  {type = "unlock-recipe", recipe = "covellite-smelting-2"},
  {type = "unlock-recipe", recipe = "cuprite-smelting-2"},
  {type = "unlock-recipe", recipe = "dioptase-smelting-2"},
  {type = "unlock-recipe", recipe = "djurleite-smelting-2"},
  {type = "unlock-recipe", recipe = "enargite-smelting-2"},
  {type = "unlock-recipe", recipe = "malachite-smelting-2"},
  {type = "unlock-recipe", recipe = "tennantite-smelting-2"},
  {type = "unlock-recipe", recipe = "tenorite-smelting-2"},
  {type = "unlock-recipe", recipe = "tetrahedite-smelting-2"},
  {type = "unlock-recipe", recipe = "akaganeite-smelting-2"},
  {type = "unlock-recipe", recipe = "ankerite-smelting-2"},
  {type = "unlock-recipe", recipe = "cronstedtite-smelting-2"},
  {type = "unlock-recipe", recipe = "ferrihydrite-smelting-2"},
  {type = "unlock-recipe", recipe = "goethite-smelting-2"},
  {type = "unlock-recipe", recipe = "greenalite-smelting-2"},
  {type = "unlock-recipe", recipe = "greigite-smelting-2"},
  {type = "unlock-recipe", recipe = "grunerite-smelting-2"},
  {type = "unlock-recipe", recipe = "hematite-smelting-2"},
  {type = "unlock-recipe", recipe = "lepidocrocite-smelting-2"},
  {type = "unlock-recipe", recipe = "macaulayite-smelting-2"},
  {type = "unlock-recipe", recipe = "magnesioferrite-smelting-2"},
  {type = "unlock-recipe", recipe = "magnetite-smelting-2"},
  {type = "unlock-recipe", recipe = "minnesotaite-smelting-2"},
  {type = "unlock-recipe", recipe = "pyrite-smelting-2"},
  {type = "unlock-recipe", recipe = "pyrrhotite-smelting-2"},
  {type = "unlock-recipe", recipe = "roaldite-smelting-2"},
  {type = "unlock-recipe", recipe = "schwertmannite-smelting-2"},
  {type = "unlock-recipe", recipe = "siderite-smelting-2"},
  {type = "unlock-recipe", recipe = "stilpnomelane-smelting-2"},
  {type = "unlock-recipe", recipe = "taenite-smelting-2"},
  {type = "unlock-recipe", recipe = "trevorite-smelting-2"},
  {type = "unlock-recipe", recipe = "troilite-smelting-2"},
  {type = "unlock-recipe", recipe = "wustite-smelting-2"},
  },














data:extend({
{
  type = "technology",
  name = "ore-processing-2",
  icon = "__base__/graphics/icons/iron-ore.png",
  icon_size = 128,
  effects = {
-- {type = "unlock-recipe", recipe = "azurite-smelting-2"},
  },
  unit = {
    count = 60, time = 10,
    ingredients = {{"automation-science-pack", 1}},
  },
  prerequisites = {"automation"},
},
{
  type = "technology",
  name = "ore-processing-2",
  icon = "__base__/graphics/icons/iron-ore.png",
  icon_size = 128,
  effects = {},
  unit = {
    count = 60, time = 10,
    ingredients = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}},
  },
  prerequisites = {"oil-processing"}, {"ore-processing-1"},
}
})