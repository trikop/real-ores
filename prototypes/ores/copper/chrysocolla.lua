if data.raw.item["silicon"] and data.raw.item["aluminum-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "chrysocolla-smelting-2",
        icon = "__base__/graphics/icons/copper-ore.png",
        icon_size = 64,
        main_product = "copper-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"chrysocolla", 1}}, 
        results = 
        {
          {type="item", name="aluminum-ore", amount=1, probability=.0205},
          {type="item", name="copper-ore", amount=1, probability=.3386},
          {type="item", name="silicon", amount=1, probability=.1710},
          {type="fluid", name="hydrogen", amount=1, probability=.0192},
          {type="fluid", name="oxygen", amount=1, probability=.4506},
        }
    }
  })
end