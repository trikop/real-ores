if data.raw.item["nickel-ore"] and data.raw.item["aluminum-ore"] and data.raw.item["magnesium-ore"] and data.raw.item["calcium-ore"] and data.raw.item["manganese-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "ankerite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"ankerite", 1}}, 
        results = 
        {
          {type="item", name="calcium-ore", amount=1, probability=.1942},
          {type="item", name="magnesium-ore", amount=1, probability=.0353},
          {type="item", name="manganese-ore", amount=1, probability=.0266},
          {type="item", name="iron-ore", amount=1, probability=.1624},
          {type="item", name="coal", amount=1, probability=.1164},
          {type="fluid", name="oxygen", amount=1, probability=.4651},
        }
    }
  })
end