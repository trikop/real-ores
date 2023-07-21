data:extend({
  {
      type = "recipe",
      name = "cronstedtite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"cronstedtite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.5592},
        {type="item", name="sulfur", amount=1, probability=.0703},
        {type="fluid", name="hydrogen", amount=1, probability=.0101},
        {type="fluid", name="oxygen", amount=1, probability=.3604},
      }
  }
})