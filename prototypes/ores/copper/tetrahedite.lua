if data.raw.item["antimony-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "tetrahedite-smelting-2",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        main_product = "copper-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"tetrahedite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.1020},
          {type="item", name="copper-ore", amount=1, probability=.3480},
          {type="item", name="antimony-ore", amount=1, probability=.2964},
          {type="item", name="sulfur", amount=1, probability=.2537},
        }
    }
  })
end