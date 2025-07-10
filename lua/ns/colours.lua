local M = {}

---@class PaletteBackground
---@field bg_dim string
---@field bg0 string
---@field bg1 string
---@field bg2 string
---@field bg3 string
---@field bg4 string
---@field bg5 string
---@field bg_visual string
---@field bg_red string
---@field bg_green string
---@field bg_blue string
---@field bg_yellow string

---@class PaletteBase
---@field fg string
---@field red string
---@field orange string
---@field yellow string
---@field green string
---@field aqua string
---@field blue string
---@field purple string
---@field grey0 string
---@field grey1 string
---@field grey2 string
---@field statusline1 string
---@field statusline2 string
---@field statusline3 string
---@field none string

---@class Palette: PaletteBase,PaletteBackground

---@alias Backgrounds "light" | "dark"
---@alias PaletteBackgrounds table<Backgrounds, PaletteBackground>

---@type PaletteBackgrounds
local background = {
  bg_dim = "#062625",
  bg0 = "#062625",
  bg1 = "#062625",
  bg2 = "#062625",
  bg3 = "#062625",
  bg4 = "#062625",
  bg5 = "#062625",
  bg_visual = "#062625",
  bg_red = "#062625",
  bg_green = "#062625",
  bg_blue = "#062625",
  bg_yellow = "#062625",
}

---@type table<Backgrounds, PaletteBase>
local base_palette = {
  fg = "#d3c6aa",
  red = "#e67e80",
  orange = "#e69875",
  yellow = "#dbbc7f",
  green = "#a7c080",
  aqua = "#83c092",
  blue = "#7fbbb3",
  purple = "#d699b6",
  grey0 = "#7a8478",
  grey1 = "#859289",
  grey2 = "#9da9a0",
  statusline1 = "#a7c080",
  statusline2 = "#d3c6aa",
  statusline3 = "#e67e80",
  none = "NONE",
}

---Generates the colour palette based on the user's config
---@param options Config The package configuration table
---@return Palette
M.generate_palette = function(options)
  local base = base_palette
  ---@type PaletteBackground
  local background_palette = background

  ---@type Palette
  local combined_palette = vim.tbl_extend("force", base, background_palette)
  options.colours_override(combined_palette)

  return combined_palette
end

return M
