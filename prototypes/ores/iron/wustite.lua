data:extend({
  {
      type = "recipe",
      name = "wustite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"wustite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.7773},
        {type="fluid", name="oxygen", amount=1, probability=.2227},
      }
  }
})
