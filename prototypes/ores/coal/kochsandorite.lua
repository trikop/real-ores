if data.raw.item["calcium-ore"] and data.raw.item["aluminum-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "kochsandorite-smelting-2",
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        main_product = "coal",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"kochsandorite", 1}}, 
        results = 
        {
          {type="item", name="calcium-ore", amount=1, probability=.1221},
          {type="item", name="aluminum", amount=1, probability=.1826},
          {type="fluid", name="hydrogen", amount=1, probability=.0225},
          {type="item", name="coal", amount=1, probability=.0772},
          {type="fluid", name="oxygen", amount=1, probability=.5956},
        }
    }
  })
end