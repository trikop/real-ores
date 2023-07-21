if data.raw.item["silicon"] and data.raw.item["aluminum-ore"] and data.raw.item["magnesium-ore"] and data.raw.item["potassium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "stilpnomelane-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"stilpnomelane", 1}}, 
        results = 
        {
          {type="item", name="potassium", amount=1, probability=.0313},
          {type="item", name="magnesium-ore", amount=1, probability=.0273},
          {type="item", name="aluminum-ore", amount=1, probability=.0433},
          {type="item", name="iron-ore", amount=1, probability=.2954},
          {type="item", name="silicon", amount=1, probability=.2251},
          {type="fluid", name="hydrogen", amount=1, probability=.0057},
          {type="fluid", name="oxygen", amount=1, probability=.3719},
        }
    }
  })
end  