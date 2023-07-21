data:extend({
  {
      type = "recipe",
      name = "humboldtine-smelting-2",
      icon = "__base__/graphics/icons/coal.png",
      icon_size = 64,
      main_product = "coal",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"humboldtine", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.3104},
        {type="fluid", name="hydrogen", amount=1, probability=.0224},
        {type="item", name="coal", amount=1, probability=.1335},
        {type="fluid", name="oxygen", amount=1, probability=.5336},
      }
  }
})