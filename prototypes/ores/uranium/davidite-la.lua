if data.raw.item["titanium-ore"] and data.raw.item["yttrium"] and data.raw.item["lanthanum"] and data.raw.item["cerium"] and data.raw.item["calcium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "davidite-la-smelting-2",
        icon = "__base__/graphics/icons/uranium-ore.png",
        icon_size = 64,
        main_product = "uranium-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"davidite-la", 1}}, 
        results = 
        {
          {type="item", name="calcium-ore", amount=1, probability=.0022},
          {type="item", name="lanthanum-ore", amount=1, probability=.0523},
          {type="item", name="cerium-ore", amount=1, probability=.0151},
          {type="item", name="yttrium-ore", amount=1, probability=.0358},
          {type="item", name="uranium-ore", amount=1, probability=.0320},
          {type="item", name="titanium-ore", amount=1, probability=.3859},
          {type="item", name="iron-ore", amount=1, probability=.1501},
          {type="fluid", name="oxygen", amount=1, probability=.3267},
        }
    }
  })
end