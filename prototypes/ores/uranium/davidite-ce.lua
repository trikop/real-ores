if data.raw.item["titanium-ore"] and data.raw.item["yttrium"] and data.raw.item["lanthanum"] and data.raw.item["cerium"] then
  data:extend({
    {
        type = "recipe",
        name = "davidite-ce-smelting-2",
        icon = "__base__/graphics/icons/uranium-ore.png",
        icon_size = 64,
        main_product = "uranium-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"davidite-ce", 1}}, 
        results = 
        {
          {type="item", name="lanthanum-ore", amount=1, probability=.0186},
          {type="item", name="cerium-ore", amount=1, probability=.0562},
          {type="item", name="yttrium-ore", amount=1, probability=.0356},
          {type="item", name="uranium-ore", amount=1, probability=.0318},
          {type="item", name="titanium-ore", amount=1, probability=.3838},
          {type="item", name="iron-ore", amount=1, probability=.1492},
          {type="fluid", name="oxygen", amount=1, probability=.3249},
        }
    }
  })
end