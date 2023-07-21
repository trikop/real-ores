if data.raw.item["arsenic-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "enargite-smelting-2",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        main_product = "copper-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"enargite", 1}}, 
        results = 
        {
          {type="item", name="copper-ore", amount=1, probability=.4841},
          {type="item", name="arsenic-ore", amount=1, probability=.1902},
          {type="item", name="sulfur", amount=1, probability=.3257},
        }
    }
  })
end