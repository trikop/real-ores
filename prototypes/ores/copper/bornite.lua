data:extend({
  {
      type = "recipe",
      name = "bornite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"bornite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.1113},
        {type="item", name="copper-ore", amount=1, probability=.6331},
        {type="item", name="sulfur", amount=1, probability=.2556},
      }
  }
})