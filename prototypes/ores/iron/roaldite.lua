if data.raw.item["nickel-ore"] and data.raw.item["nitrogen"] then
  data:extend({
    {
        type = "recipe",
        name = "roaldite-smelting-2",
        icon = "__base__/graphics/icons/iron-ore.png",
        icon_size = 64,
        main_product = "iron-ore",
        category = "chemistry",
        enabled = false,
        energy_required = 1,
        ingredients = {{"roaldite", 1}}, 
        results = 
        {
          {type="item", name="iron-ore", amount=1, probability=.8918},
          {type="item", name="nickel-ore", amount=1, probability=.0493},
          {type="fluid", name="nitrogen", amount=1, probability=.0589},
        }
    }
  })
end  