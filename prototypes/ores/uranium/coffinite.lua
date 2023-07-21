if data.raw.item["silicon"] then
  data:extend({
    {
        type = "recipe",
        name = "coffinite-smelting-2",
        icon = "__base__/graphics/icons/uranium-ore.png",
        icon_size = 64,
        main_product = "uranium-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"coffinite", 1}}, 
        results = 
        {
          {type="item", name="uranium-ore", amount=1, probability=.7263},
          {type="item", name="silicon", amount=1, probability=.0771},
          {type="fluid", name="hydrogen", amount=1, probability=.0012},
          {type="fluid", name="oxygen", amount=1, probability=.1953},
        }
    }
  })
end