local palettes = require("ns.colours")
local config = require("ns").config

local palette = palettes.generate_palette(config)

if config.transparent_background_level == 2 then
  palette.bg1 = palette.none
end

return {
  normal = {
    a = { bg = palette.statusline1, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.fg },
  },
  insert = {
    a = { bg = palette.statusline2, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.fg },
  },
  visual = {
    a = { bg = palette.statusline3, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.fg },
  },
  replace = {
    a = { bg = palette.orange, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.bg0 },
  },
  command = {
    a = { bg = palette.aqua, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.fg },
  },
  terminal = {
    a = { bg = palette.purple, fg = palette.bg0, gui = "bold" },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg0, fg = palette.fg },
  },
  inactive = {
    a = { bg = palette.bg1, fg = palette.grey1 },
    b = { bg = palette.orange, fg = palette.bg0 },
    c = { bg = palette.bg1, fg = palette.grey1 },
  },
}
