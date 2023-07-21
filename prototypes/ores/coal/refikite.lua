data:extend({
  {
      type = "recipe",
      name = "refikite-smelting-2",
      icon = "__base__/graphics/icons/coal.png",
      icon_size = 64,
      main_product = "coal",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"refikite", 1}}, 
      results = 
      {
        {type="fluid", name="hydrogen", amount=1, probability=.1059},
        {type="item", name="coal", amount=1, probability=.7890},
        {type="fluid", name="oxygen", amount=1, probability=.1051},
      }
  }
})