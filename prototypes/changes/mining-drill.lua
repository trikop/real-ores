data.raw["mining-drill"]["electric-mining-drill"].output_fluid_box =
{
  base_area = 1,
  base_level = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {type="output", position={-1, -2}},
    {type="output", position={1, -2}}
  },
}


data.raw["mining-drill"]["burner-mining-drill"].mode = "output-to-separate-pipe"
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_base_area = 1
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_base_level = 1
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_pipe_covers = pipecoverspictures()
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_pipe_connections = {{type = "output", position = {-1.6, -0.6}}, {type = "output", position = {1.6, -0.6}}}
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_off_when_no_fluid_recipe = true
data.raw["mining-drill"]["burner-mining-drill"].output_fluid_box_production_type = "output"

