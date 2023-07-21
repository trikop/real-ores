data:extend({
  {
      type = "recipe",
      name = "uraninite-smelting-2",
      icon = "__base__/graphics/icons/uranium-ore.png",
      icon_size = 64,
      main_product = "uranium-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"uraninite", 1}}, 
      results = 
      {
        {type="item", name="uranium-ore", amount=1, probability=.8815},
        {type="fluid", name="oxygen", amount=1, probability=.1185},
      }
  }
})