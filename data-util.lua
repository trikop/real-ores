local util = {}
function util.py()
  return mods["pyrawores"]
end

function util.pm()
  return mods["periodic-madness"]
end

function util.se6()
  return mods["space-exploration"] and mods["space-exploration"] >= "0.6" 
end

function util.k2()
  return mods.Krastorio2 or mods["Krastorio2-spaced-out"]
end

return util