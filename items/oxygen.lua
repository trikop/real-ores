if not mods.Krastorio2 then
    data:extend({
        {
        type = "fluid",
        name = "oxygen",
        default_temperature = 20,
        max_temperature = 1000,
        base_color = {r=255, g=255, b=255},
        flow_color = {r=255, g=255, b=255},
        icons = {{icon = "__real-ores__/graphics/icons/oxygen.png", icon_size = 128}},
        pressure_to_speed_ratio = 0.4,
        auto_barrel = false,
        subgroup = "fluid",
        },
    })
end