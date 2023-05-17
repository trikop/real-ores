require("prototypes/items/oxygen")


require("prototypes/ores/default")

-- Iron main
require("prototypes/ores/hematite")
require("prototypes/ores/magnetite")
require("prototypes/ores/siderite")
require("prototypes/ores/goethite")
require("prototypes/ores/ankerite")
require("prototypes/ores/wüstite")
require("prototypes/ores/ferrihydrite")
require("prototypes/ores/lepidocrocite")
require("prototypes/ores/schwertmannite")
require("prototypes/ores/cronstedtite")
--Iron/sulfur ores
require("prototypes/ores/pyrite")
require("prototypes/ores/troilite")
require("prototypes/ores/pyrrhotite")
require("prototypes/ores/greigite")

if mods.bzsilicon then
    require("prototypes/ores/minnesotaite")
    require("prototypes/ores/greenalite")
    require("prototypes/ores/grunerite")
    if mods.bzaluminum then
        require("prototypes/ores/stilpnomelane")
        require("prototypes/ores/macaulayite")
    end
end

if mods.IfNickel then
    require("prototypes/ores/roaldite")
    require("prototypes/ores/taenite")
    if mods.bzchlorine then
        require("prototypes/ores/akaganeite")
    end
    if mods.bzaluminum then
        if mods.magnesiumdoesntexistyet then
            require("prototypes/ores/trevorite")
            require("prototypes/ores/magnsioferrite")
        end
    end
end