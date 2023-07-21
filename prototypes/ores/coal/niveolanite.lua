if data.raw.item["sodium"] and data.raw.item["calcium-ore"] and data.raw.item["beryllium-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "niveolanite-smelting-2",
        icon = "__base__/graphics/icons/coal.png",
        icon_size = 64,
        main_product = "coal",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"niveolanite", 1}}, 
        results = 
        {
          {type="item", name="sodium", amount=1, probability=.1510},
          {type="item", name="calcium-ore", amount=1, probability=.0280},
          {type="item", name="beryllium", amount=1, probability=.0617},
          {type="fluid", name="hydrogen", amount=1, probability=.0311},
          {type="item", name="coal", amount=1, probability=.0840},
          {type="fluid", name="oxygen", amount=1, probability=.6441},
        }
    }
  })
end