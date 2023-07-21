if data.raw.item["nickel-ore"] and data.raw.item["magnesium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "minnesotaite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"minnesotaite", 1}}, 
        results = 
        {
          {type="item", name="magnesium-ore", amount=1, probability=.0265},
          {type="item", name="iron-ore", amount=1, probability=.3048},
          {type="item", name="silicon", amount=1, probability=.2452},
          {type="fluid", name="hydrogen", amount=1, probability=.0044},
          {type="fluid", name="oxygen", amount=1, probability=.4191},
        }
    }
  })
end