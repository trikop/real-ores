-- Define a table of smelting recipes
local smelting_recipes = {
  {input = "wustite", output = "iron-plate"},
  {input = "malachite", output = "copper-plate"},
  -- Add more recipes as needed
}

-- Register the smelting recipes
for _, recipe in ipairs(smelting_recipes) do
  local input_item = recipe.input
  local output_item = recipe.output
  data:extend({
      {
          type = "recipe",
          name = output_item .. "-smelting",
          category = "smelting",
          enabled = true,
          energy_required = 10,
          ingredients = {{input_item, 20}},
          result = output_item,
          result_count = 1
      }
  })
end