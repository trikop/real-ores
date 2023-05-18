require("prototypes/items/fluids")

require("prototypes/ores/default")

-- Iron main
require("prototypes/ores/iron/hematite")
require("prototypes/ores/iron/magnetite")
require("prototypes/ores/iron/siderite")
require("prototypes/ores/iron/goethite")
--require("prototypes/ores/iron/wüstite")
require("prototypes/ores/iron/ferrihydrite")
require("prototypes/ores/iron/lepidocrocite")
require("prototypes/ores/iron/schwertmannite")
require("prototypes/ores/iron/cronstedtite")
--Iron/sulfur ores
require("prototypes/ores/iron/pyrite")
require("prototypes/ores/iron/troilite")
require("prototypes/ores/iron/pyrrhotite")
require("prototypes/ores/iron/greigite")

--Copper ores
require("prototypes/ores/copper/chalcopyrite")
require("prototypes/ores/copper/chalcocite")
require("prototypes/ores/copper/covellite")
require("prototypes/ores/copper/djurleite")
require("prototypes/ores/copper/bornite")
require("prototypes/ores/copper/malachite")
require("prototypes/ores/copper/azurite")
require("prototypes/ores/copper/cuprite")

if mods.bzsilicon then
    require("prototypes/ores/iron/minnesotaite")
    require("prototypes/ores/iron/greenalite")
    require("prototypes/ores/iron/grunerite")
    require("prototypes/ores/copper/dioptase")
    if mods.bzaluminum then
        require("prototypes/ores/iron/macaulayite")
        require("prototypes/ores/copper/chrysocolla")
        if mods.magnesiumdoesntexistyet then
            if mods.potassiumdoesntexistyet then
                require("prototypes/ores/iron/stilpnomelane")
            end
        end
    end
end

if mods.IfNickel then
    require("prototypes/ores/iron/roaldite")
    require("prototypes/ores/iron/taenite")
    if mods.bzchlorine then
        require("prototypes/ores/iron/akaganeite")
    end
    if mods.bzaluminum then
        if mods.magnesiumdoesntexistyet then
            require("prototypes/ores/iron/trevorite")
            require("prototypes/ores/iron/magnsioferrite")
            if mods.calcium then
                require("prototypes/ores/iron/ankerite")
            end
            if mods.bzsilicon then

            end
        end
    end
end

if mods.arsenicdoesntexistyet then
    require("prototypes/ores/copper/enargite")
    require("prototypes/ores/copper/tennantite")
end

if mods.antimonydoesntexistyet then
    require("prototypes/ores/copper/tetrahedite")