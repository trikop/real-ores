data:extend({
  {
      type = "recipe",
      name = "azurite-smelting-2",
      icon = "__base__/graphics/icons/copper-ore.png",
      icon_size = 64,
      main_product = "copper-ore",
      category = "chemistry",
      enabled = false,
      energy_required = 1,
      ingredients = {{"azurite", 1}}, 
      results = 
      {
        {type="item", name="copper-ore", amount=1, probability=.5531},
        {type="fluid", name="hydrogen", amount=1, probability=.0058},
        {type="item", name="coal", amount=1, probability=.0697},
        {type="fluid", name="oxygen", amount=1, probability=.3714},
      }
  }
})