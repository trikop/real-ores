data:extend({
  {
      type = "recipe",
      name = "chalcopyrite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"chalcopyrite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.3043},
        {type="item", name="copper-ore", amount=1, probability=.3463},
        {type="item", name="sulfur", amount=1, probability=.3494},
      }
  }
})