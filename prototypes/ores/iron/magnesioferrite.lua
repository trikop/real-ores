if data.raw.item["nickel-ore"] and data.raw.item["aluminum-ore"] and data.raw.item["magnesium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "magnesioferrite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"magnesioferrite", 1}}, 
        results = 
        {
          {type="item", name="magnesium-ore", amount=1, probability=.1215},
          {type="item", name="iron-ore", amount=1, probability=.5585},
          {type="fluid", name="oxygen", amount=1, probability=.3200},
        }
    }
  })
end