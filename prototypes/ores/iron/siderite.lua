data:extend({
  {
      type = "recipe",
      name = "siderite-smelting-2",
      icon = "__base__/graphics/icons/iron-ore.png",
      icon_size = 64,
      main_product = "iron-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"siderite", 1}}, 
      results = 
      {
        {type="item", name="iron-ore", amount=1, probability=.4820},
        {type="item", name="coal", amount=1, probability=.1037},
        {type="fluid", name="oxygen", amount=1, probability=.4143},
      }
  }
})