local meld = require("meld")

---@class LMRecipeData
---@field surface_conditions? SurfaceCondition[]
---@field ingredients? table<string, Ingredient[]>
---@field energy_required? double
---@field category? string

---@class LMLoaderTemplate
---@field next_upgrade? string
---@field tint? Color
---@field prerequisite_techs? TechnologyID[]
---@field recipe_data LMRecipeData
---@field name? string
---@field underground_name? string
---@field unlocked_by? string
---@field group? string
---@field subgroup? string
---@field order? string
---@field localised_name? data.LocalisedString


local loader_templates = require("base")

-- Ultimate Belts Space Age!
local addon = require("ultimatebeltsspaceage")
if addon and not mods["5dim_transport"] then
  meld.meld(loader_templates, addon)
end

-- 5 Dim New Transport
addon = require("5dim_transport")
if addon then
  meld.meld(loader_templates, addon)
end

return loader_templates