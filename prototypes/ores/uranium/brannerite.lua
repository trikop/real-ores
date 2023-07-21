if data.raw.item["calcium-ore"] and data.raw.item["titanium-ore"] and data.raw.item["carium"]  then
  data:extend({
    {
        type = "recipe",
        name = "brannerite-smelting-2",
        icon = "__base__/graphics/icons/uranium-ore.png",
        icon_size = 64,
        main_product = "uranium-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"brannerite", 1}}, 
        results = 
        {
          {type="item", name="calcium-ore", amount=1, probability=.0339},
          {type="item", name="cerium-ore", amount=1, probability=.0790},
          {type="item", name="uranium-ore", amount=1, probability=.3354},
          {type="item", name="titanium-ore", amount=1, probability=.2024},
          {type="item", name="iron-ore", amount=1, probability=.0787},
          {type="fluid", name="oxygen", amount=1, probability=.2707},
        }
    }
  })
end