if data.raw.item["arsenic-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "tennantite-smelting-2",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        main_product = "copper-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"tennantite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.0380},
          {type="item", name="copper-ore", amount=1, probability=.4751},
          {type="item", name="arsenic-ore", amount=1, probability=.2037},
          {type="item", name="sulfur", amount=1, probability=.2833},
        }
    }
  })
end