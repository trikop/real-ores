if data.raw.item["silicon"] then
  data:extend({
    {
        type = "recipe",
        name = "grunerite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"grunerite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.3903},
          {type="item", name="silicon", amount=1, probability=.2243},
          {type="fluid", name="hydrogen", amount=1, probability=.0020},
          {type="fluid", name="oxygen", amount=1, probability=.3834},
        }
    }
  })
end  