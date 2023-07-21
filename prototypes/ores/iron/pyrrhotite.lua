data:extend({
  {
      type = "recipe",
      name = "pyrrhotite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"pyrrhotite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.6233},
        {type="item", name="sulfur", amount=1, probability=.3767},
      }
  }
})