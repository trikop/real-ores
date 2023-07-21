data:extend({
  {
      type = "recipe",
      name = "magnetite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"magnetite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.7236},
        {type="fluid", name="oxygen", amount=1, probability=.2764},
      }
  }
})