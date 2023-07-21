data:extend({
  {
      type = "recipe",
      name = "tenorite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"tenorite", 1}}, 
      results = 
      {
        {type="item", name="copper-ore", amount=1, probability=.7989},
        {type="fluid", name="oxygen", amount=1, probability=.2011},
      }
  }
})