if mods["space-exploration"] then --idk how to do this yet
    data.raw.resource["iron-ore"].autoplace.base_spots_per_km2 = 0
    data.raw.resource["copper-ore"].autoplace.base_spots_per_km2 = 0
    --data.raw.resource["stone"].autoplace.base_spots_per_km2 = 0
    data.raw.resource["coal"].autoplace.base_spots_per_km2 = 0
    data.raw.resource["uranium-ore"].autoplace.base_spots_per_km2 = 0
    data.raw.resource["iron-ore"].autoplace.has_starting_area_placement = false
    data.raw.resource["copper-ore"].autoplace.has_starting_area_placement = false
    --data.raw.resource["stone"].autoplace.has_starting_area_placement = false
    data.raw.resource["coal"].autoplace.has_starting_area_placement = false
    data.raw.resource["uranium-ore"].autoplace.has_starting_area_placement = false
else
    data.raw.resource["iron-ore"].autoplace = nil
    data.raw.resource["copper-ore"].autoplace = nil
    --data.raw.resource["stone"].autoplace = nil
    data.raw.resource["coal"].autoplace = nil
    data.raw.resource["uranium-ore"].autoplace = nil
end

if mods.placeholdercuzimnotusingthisyet then

if data.raw.item["zinc-ore"] then
    data.raw.resource["zinc-ore"].autoplace = nil
end
if data.raw.item["nickel-ore"] then
    data.raw.resource["nickel-ore"].autoplace = nil
end
if data.raw.item["aluminum-ore"] then
    data.raw.resource["aluminum-ore"].autoplace = nil
end
-- if data.raw.item["diamond-ore"] then
--     data.raw.resource["diamond-ore"].autoplace = nil
-- end
if data.raw.item["gold-ore"] then
    data.raw.resource["gold-ore"].autoplace = nil
end
-- if data.raw.item["graphite-ore"] then
--     data.raw.resource["graphite-ore"].autoplace = nil
-- end
if data.raw.item["lead-ore"] then
    data.raw.resource["lead-ore"].autoplace = nil
end
if data.raw.item["salt-ore"] then
    data.raw.resource["salt-ore"].autoplace = nil
end
if data.raw.item["tin-ore"] then
    data.raw.resource["tin-ore"].autoplace = nil
end
if data.raw.item["titanium-ore"] then
    data.raw.resource["titanium-ore"].autoplace = nil
end
if data.raw.item["tungsten-ore"] then
    data.raw.resource["tungsten-ore"].autoplace = nil
end
if data.raw.item["zircon"] then
    data.raw.resource["zircon"].autoplace = nil
end
end