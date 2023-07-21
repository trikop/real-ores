if data.raw.item["nickel-ore"] and data.raw.item["chlorine"] then
  data:extend({
    {
        type = "recipe",
        name = "akaganeite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"akaganeite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.5575},
          {type="item", name="nickel-ore", amount=1, probability=.0308},
          {type="fluid", name="hydrogen", amount=1, probability=.0128},
          {type="fluid", name="chlorine", amount=1, probability=.0605},
          {type="fluid", name="oxygen", amount=1, probability=.3383},
        }
    }
  })
end