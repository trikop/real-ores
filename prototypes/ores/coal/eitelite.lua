if data.raw.item["sodium"] and data.raw.item["magnesium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "eitelite-smelting-2",
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        main_product = "coal",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"eitelite", 1}}, 
        results = 
        {
          {type="item", name="sodium", amount=1, probability=.2416},
          {type="item", name="magnesium-ore", amount=1, probability=.1277},
          {type="item", name="coal", amount=1, probability=.1262},
          {type="fluid", name="oxygen", amount=1, probability=.5044},
        }
    }
  })
end