data:extend({
  {
      type = "recipe",
      name = "dinite-smelting-2",
      icon = "__base__/graphics/icons/coal.png",
      icon_size = 64,
      main_product = "coal",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"dinite", 1}}, 
      results = 
      {
        {type="fluid", name="hydrogen", amount=1, probability=.1312},
        {type="item", name="coal", amount=1, probability=.8688},
      }
  }
})