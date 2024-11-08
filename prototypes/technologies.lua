---Create technology prototype for loaders
---@param prefix string Loader tier prefix
---@param prereq_techs TechnologyID[]
---@param tint Color
local function create_technology(prefix, prereq_techs, tint)
  if prefix == "chute-" then
    return
  end

  local technology = {
    type = "technology",
    name = prefix .. "mdrn-loader",
    icons = {
      {
        icon = "__loaders-modernized__/graphics/technology/mdrn-loader-technology-base.png",
        icon_size = 128,
      },
      {
        icon = "__loaders-modernized__/graphics/technology/mdrn-loader-technology-base.png",
        icon_size = 128,
        tint = tint,
      }
    },
    effects = {{type = "unlock-recipe", recipe = prefix .. "mdrn-loader"}},
    order = prereq_techs[1],
    prerequisites = prereq_techs,
    unit = util.table.deepcopy(data.raw["technology"][prereq_techs[1]].unit)
  }
  data:extend{technology}
end

return {
  create_technology = create_technology
}