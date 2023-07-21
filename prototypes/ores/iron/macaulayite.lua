if data.raw.item["silicon"] and data.raw.item["aluminum-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "macaulayite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"macaulayite", 1}}, 
        results = 
        {
          {type="item", name="aluminum-ore", amount=1, probability=.0255},
          {type="item", name="iron-ore", amount=1, probability=.5804},
          {type="item", name="silicon", amount=1, probability=.0531},
          {type="fluid", name="hydrogen", amount=1, probability=.0010},
          {type="fluid", name="oxygen", amount=1, probability=.3401},
        }
    }
  })
end  