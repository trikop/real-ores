if data.raw.item["nickel-ore"] then
  data:extend({
    {
        type = "recipe",
        name = "taenite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"taenite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.7919},
          {type="item", name="nickel-ore", amount=1, probability=.2081},
        }
    }
  })
end  