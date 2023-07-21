if data.raw.item["silicon"] then
  data:extend({
    {
        type = "recipe",
        name = "dioptase-smelting-2",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        main_product = "copper-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"dioptase", 1}}, 
        results = 
        {
          {type="item", name="copper-ore", amount=1, probability=.4031},
          {type="item", name="silicon", amount=1, probability=.1782},
          {type="fluid", name="hydrogen", amount=1, probability=.0128},
          {type="fluid", name="oxygen", amount=1, probability=.4060},
        }
    }
  })
end