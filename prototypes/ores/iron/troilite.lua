data:extend({
  {
      type = "recipe",
      name = "troilite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"troilite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.6353},
        {type="item", name="sulfur", amount=1, probability=.3647},
      }
  }
})