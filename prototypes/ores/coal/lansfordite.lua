if data.raw.item["magnesium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "lansfordite-smelting-2",
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        main_product = "coal",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"lansfordite", 1}}, 
        results = 
        {
          {type="item", name="magnesium-ore", amount=1, probability=.1394},
          {type="fluid", name="hydrogen", amount=1, probability=.0578},
          {type="item", name="coal", amount=1, probability=.0689},
          {type="fluid", name="oxygen", amount=1, probability=.7340},
        }
    }
  })
end