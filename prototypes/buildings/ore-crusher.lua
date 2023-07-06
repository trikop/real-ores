
local burnerOreCrusher = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-1"]) -- TODO add recipe category
local burnerOreCrusherItem = util.table.deepcopy(data.raw["item"]["assembling-machine-1"])
local burnerOreCrusherRecipe = util.table.deepcopy(data.raw["recipe"]["assembling-machine-1"])
burnerOreCrusher.name = "burner-ore-crusher"
burnerOreCrusher.icon = "__base__/graphics/icons/assembling-machine-1.png"
-- burnerOreCrusher.place_result = "burner-ore-crusher"
burnerOreCrusher.minable.result = "burner-ore-crusher"
burnerOreCrusher.energy_source = {
  type = "burner",
  fuel_category = "chemical",
  effectivity = 1,
  fuel_inventory_size = 1,
  burnt_inventory_size = 1
}
data:extend({burnerOreCrusher})
burnerOreCrusherItem.name = "burner-ore-crusher"
data:extend({burnerOreCrusherItem})
burnerOreCrusherRecipe.enabled = true
burnerOreCrusherRecipe.name = "burner-ore-crusher"
burnerOreCrusherRecipe.ingredients = {{ "copper-plate",200 }, { "steel-plate",50 }}
data:extend({burnerOreCrusherRecipe})


-- local electricOreCrusher = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-2"])
-- local electricOreCrusherItem = util.table.deepcopy(data.raw["item"]["assembling-machine-2"])

-- electricOreCrusher.name = "electric-ore-crusher"
-- electricOreCrusher.icon = "__base__/graphics/icons/assembling-machine-2.png"
-- electricOreCrusher.minable.result = "electric-ore-crusher"
-- electricOreCrusher.crafting_speed = 2
-- electricOreCrusher.module_specification.module_slots = 1
-- data:extend({electricOreCrusher})
-- electricOreCrusherItem.name = "electric-ore-crusher"
-- data:extend({electricOreCrusherItem})


-- local advancedOreCrusher = util.table.deepcopy(data.raw["assembling-machine"]["assembling-machine-3"])
-- local advancedOreCrusherItem = util.table.deepcopy(data.raw["item"]["assembling-machine-3"])

-- advancedOreCrusher.name = "advanced-ore-crusher"
-- advancedOreCrusher.icon = "__base__/graphics/icons/assembling-machine-3.png"
-- advancedOreCrusher.minable.result = "advanced-ore-crusher"
-- advancedOreCrusher.crafting_speed = 4
-- advancedOreCrusher.module_specification.module_slots = 5
-- data:extend({advancedOreCrusher})
-- advancedOreCrusherItem.name = "advanced-ore-crusher"
-- data:extend({advancedOreCrusherItem})

-- data:extend({
--     {
--       type = "technology",
--       name = "electric-ore-crushing",
--       icon = "__your-mod-name__/graphics/technology/electric-ore-crushing.png",
--       icon_size = 128,
--       prerequisites = {"automation-2", "steel-processing"},
--       effects = {
--         {
--           type = "unlock-recipe",
--           recipe = "electric-ore-crusher"
--         }
--       },
--       unit = {
--         count = 100,
--         ingredients = {
--           {"automation-science-pack", 1},
--           {"logistic-science-pack", 1},
--         },
--         time = 30
--       },
--     },
--     {
--         type = "technology",
--         name = "advanced-ore-crushing",
--         icon = "__your-mod-name__/graphics/technology/advanced-ore-crushing.png",
--         icon_size = 128,
--         prerequisites = {"electric-ore-crushing", "advanced-electronics"},
--         effects = {
--           {
--             type = "unlock-recipe",
--             recipe = "advanced-ore-crusher"
--           }
--         },
--         unit = {
--           count = 200,
--           ingredients = {
--             {"automation-science-pack", 1},
--             {"logistic-science-pack", 1},
--             {"chemical-science-pack", 1}
--           },
--           time = 40
--         },
--       }
--   })
  