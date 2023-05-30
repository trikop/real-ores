require("prototypes/items/fluids")

--require("prototypes/ores/default")

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
require("prototypes/ores/copper/tenorite")

--Coal ores
require("prototypes/ores/coal/dinite")
require("prototypes/ores/coal/refikite")
require("prototypes/ores/coal/humboldtine")

--Uranium ores
require("prototypes/ores/uranium/uraninite")

if data.raw.item["silicon"] then
    require("prototypes/ores/iron/greenalite")
    require("prototypes/ores/iron/grunerite")
    require("prototypes/ores/copper/dioptase")
    require("prototypes/ores/uranium/coffinite")
    if data.raw.item["aluminum-ore"] then
        require("prototypes/ores/iron/macaulayite")
        require("prototypes/ores/copper/chrysocolla")
        if data.raw.item["magnesium-ore"] then --doesn't exist yet
            if data.raw.item["potassium-ore"] then --doesn't exist yet
                require("prototypes/ores/iron/stilpnomelane")
            end
        end
    end
end

if data.raw.item["nickel-ore"] then
    require("prototypes/ores/iron/roaldite")
    require("prototypes/ores/iron/taenite")
    if data.raw.item["chlorine"] then
        require("prototypes/ores/iron/akaganeite")
    end
    if data.raw.item["aluminum-ore"] then
        if data.raw.item["magnesium-ore"] then --doesn't exist yet
            require("prototypes/ores/iron/trevorite")
            require("prototypes/ores/iron/magnsioferrite")
            if data.raw.item["calcium-ore"] then --doesn't exist yet
                if data.raw.item["manganese-ore"] then
                    require("prototypes/ores/iron/ankerite")
                end
            end
            if data.raw.item["silicon"] then

            end
        end
    end
    if data.raw.item["magnesium-ore"] then --doesn't exist yet
        require("prototypes/ores/iron/minnesotaite")
    end
end

if data.raw.item["arsenic-ore"] then --doesn't exist yet
    require("prototypes/ores/copper/enargite")
    require("prototypes/ores/copper/tennantite")
end

if data.raw.item["antimony-ore"] then --doesn't exist yet
    require("prototypes/ores/copper/tetrahedite")
end

if data.raw.item["sodium"] then
    if data.raw.item["calcium-ore"] then --doesn't exist yet
        require("prototypes/ores/coal/wattevilleite")
        if data.raw.item["beryllium-ore"] then
            require("prototypes/ores/coal/niveolaite")
        end
    end
    if data.raw.item["magnesium-ore"] then --doesn't exist yet
        require("prototypes/ores/coal/eitelite")
    end
end

if data.raw.item["magnesium-ore"] then --doesn't exist yet
    require("prototypes/ores/coal/landsfordite")
end

if data.raw.item["calcium-ore"] then --doesn't exist yet
    if data.raw.item["aluminum-ore"] then
        require("prototypes/ores/coal/kochsandorite")
    end
    if data.raw.item["titanium-ore"] then
        if data.raw.item["cerium"] then --doesn't exist yet
            require("prototypes/ores/uranium/brannerite")
        end
    end
end
if data.raw.item["titanium-ore"] then
    if data.raw.item["yttrium"] then --doesn't exist yet
        if data.raw.item["lanthanum"] then --doesn't exist yet
            if data.raw.item["cerium"] then --doesn't exist yet
                require("prototypes/ores/uranium/davidite-ce")
                if data.raw.item["calcium-ore"] then --doesn't exist yet
                    require("prototypes/ores/uranium/davidite-la")
                end
            end
        end
    end
end