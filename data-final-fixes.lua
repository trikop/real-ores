local resource_autoplace = require("resource-autoplace");


-- data.raw.planet.nauvis.map_gen_settings.autoplace_controls["iron-ore"] = {}
-- data.raw.planet.nauvis.map_gen_settings.autoplace_settings.entity.settings["iron-ore"] = {}
-- resource_autoplace.initialize_patch_set("iron-ore", false)
-- resource_autoplace.initialize_patch_set("copper-ore", false)
-- resource_autoplace.initialize_patch_set("coal", false)

--Didnt add stone here
local ores_to_disable = { "iron-ore", "copper-ore", "coal", "uranium-ore", "zircon"}
local pt = {"hydrogen", "helium", "lithium", "beryllium", "boron", "carbon", "nitrogen", "oxygen", "fluorine", "neon", "sodium", "magnesium", "aluminum", "silicon", "phosphorus", "sulfur", "chlorine", "argon", "potassium", "calcium", "scandium", "titanium", "vanadium", "chromium", "manganese", "iron", "cobalt", "nickel", "copper", "zinc", "gallium", "germanium", "arsenic", "selenium", "bromine", "krypton", "rubidium", "strontium", "yttrium", "zirconium", "niobium", "molybdenum", "technetium", "ruthenium", "rhodium", "palladium", "silver", "cadmium", "indium", "tin", "antimony", "tellurium", "iodine", "xenon", "cesium", "barium", "lanthanum", "cerium", "praseodymium", "neodymium", "promethium", "samarium", "europium", "gadolinium", "terbium", "dysprosium", "holmium", "erbium", "thulium", "ytterbium", "lutetium", "hafnium", "tantalum", "tungsten", "rhenium", "osmium", "iridium", "platinum", "gold", "mercury", "thallium", "lead", "bismuth", "polonium", "astatine", "radon", "francium", "radium", "actinium", "thorium", "protactinium", "uranium", "neptunium", "plutonium", "americium", "curium", "berkelium", "californium", "einsteinium", "fermium", "mendelevium", "nobelium", "lawrencium", "rutherfordium", "dubnium", "seaborgium", "bohrium", "hassium", "meitnerium", "darmstadtium", "roentgenium", "copernicium", "nihonium", "flerovium", "moscovium", "livermorium", "tennessine", "oganesson"}
for _, ore in ipairs(pt) do table.insert(ores_to_disable, ore) end

-- DIdnt add "ore-bioreserve", "ore-quartz"
-- local py = {, "ore-aluminium", "ore-chromium", "ore-lead", "ore-nickel", "ore-tin", "ore-titanium", , "molybdenum-ore"}
-- for _, ore in ipairs(py) do table.insert(ores_to_disable, ore) end
--didnt add "quartz-rock", "salt-rock"
local py2 = {"raw-coal", "antimonium", "copper-rock", "iron-rock", "coal-rock", "aluminium-rock", "chromium-rock", "lead-rock", "nickel-rock", "tin-rock", "titanium-rock", "zinc-rock", "sulfur-patch"}
for _, ore in ipairs(py2) do table.insert(ores_to_disable, ore) end


log("Disabled ores:")
for _, ore in pairs(ores_to_disable) do
  for _, n in ipairs({ ore, ore .. "-ore", "ore-" .. ore }) do
    local resource = data.raw["resource"][ore]
    if resource and resource.autoplace then
      log(" - " .. ore)
      resource.autoplace = {
        probability_expression = "0",
        richness_expression = "0",
      }
    end
    -- Hide from map generator GUI
    if data.raw["autoplace-control"][ore] then
      data.raw["autoplace-control"][ore].hidden = true
    end
  end
end

-- local nauvis = data.raw.planet["nauvis"]
-- nauvis.map_gen_settings.autoplace_controls["iron-ore"] = nil
