data:extend({
  {
      type = "recipe",
      name = "ferrihydrite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"ferrihydrite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.6621},
        {type="fluid", name="hydrogen", amount=1, probability=.0060},
        {type="fluid", name="oxygen", amount=1, probability=.3319},
      }
  }
})