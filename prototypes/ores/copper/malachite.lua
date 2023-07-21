data:extend({
  {
      type = "recipe",
      name = "malachite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"malachite", 1}}, 
      results = 
      {
        {type="item", name="copper-ore", amount=1, probability=.5748},
        {type="fluid", name="hydrogen", amount=1, probability=.0091},
        {type="item", name="coal", amount=1, probability=.0543},
        {type="fluid", name="oxygen", amount=1, probability=.3618},
      }
  }
})