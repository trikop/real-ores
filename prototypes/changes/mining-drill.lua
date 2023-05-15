-- data.raw["mining-drill"]["electric-mining-drill"].output_fluid_box =
-- {
--   base_area = 1,
--   base_level = 1,
--   pipe_covers = pipecoverspictures(),
--   pipe_connections =
--   {
--     {
--       positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
--     },
--   },
-- }

data.raw["mining-drill"]["electric-mining-drill"].output_fluid_box =
{
  base_area = 1,
  base_level = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {
        type="output", position={1, -2}
    },
  },
}
data.raw["mining-drill"]["electric-mining-drill"].output_fluid_box =
{
  base_area = 1,
  base_level = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {
        type="output", position={1, 2}
    },
  },
}
