-- data.raw.recipe["iron-plate"].enabled = false
-- data.raw.recipe["copper-plate"].enabled = false
--Tier 0 smelting recipes
local smelting_recipes = {
  -- {input = "akaganeite", output = "iron-plate"},
  -- {input = "ankerite", output = "iron-plate"},
  -- {input = "cronstedtite", output = "iron-plate"},
  -- {input = "ferrihydrite", output = "iron-plate"},
  -- {input = "goethite", output = "iron-plate"},
  -- {input = "greenalite", output = "iron-plate"},
  -- {input = "greigite", output = "iron-plate"},
  -- {input = "grunerite", output = "iron-plate"},
  -- {input = "hematite", output = "iron-plate"},
  -- {input = "lepidocrocite", output = "iron-plate"},
  -- {input = "macaulayite", output = "iron-plate"},
  -- {input = "magnesioferrite", output = "iron-plate"},
  -- {input = "magnetite", output = "iron-plate"},
  -- {input = "minnesotaite", output = "iron-plate"},
  -- {input = "pyrite", output = "iron-plate"},
  -- {input = "pyrrhotite", output = "iron-plate"},
  -- {input = "roaldite", output = "iron-plate"},
  -- {input = "schwertmannite", output = "iron-plate"},
  -- {input = "siderite", output = "iron-plate"},
  -- {input = "stilpnomelane", output = "iron-plate"},
  -- {input = "taenite", output = "iron-plate"},
  -- {input = "trevorite", output = "iron-plate"},
  -- {input = "troilite", output = "iron-plate"},
  {input = "wustite", output = "iron-plate"},
}
for _, recipe in ipairs(smelting_recipes) do
  local input_item = recipe.input
  local output_item = recipe.output
  data:extend({
      {
          type = "recipe",
          name = input_item .. "-smelting",
          category = "smelting",
          enabled = true,
          energy_required = 16,
          ingredients = {{input_item, 20}},
          result = output_item, 
          result_count = 0.5,
      }
  })
end