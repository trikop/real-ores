data:extend({
  {
      type = "recipe",
      name = "cuprite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"cuprite", 1}}, 
      results = 
      {
        {type="item", name="copper-ore", amount=1, probability=.8882},
        {type="fluid", name="oxygen", amount=1, probability=.1118},
      }
  }
})