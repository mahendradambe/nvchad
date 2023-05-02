local palette = {
  purple = "#a277ff",
  green = "#61ffca",
  orange = "#ffca85",
  red = "#ff6767",
  pink = "#f694ff",
  white = "#edecee",
  gray = "#6d6d6d",
  black = "#15141b",
  purple_faded = "#3d375e",
  blue = "#82e2ff",
  blacker = "#0d0c10",
}
local M = {}

M.base_30 = {
  white = palette.white,
  black = palette.black, --  nvim bg
  darker_black = "#141319",
  black2 = "#21202b",
  one_bg = "#2a2836",
  one_bg2 = "#252631",
  one_bg3 = "#3c394e",
  grey = "#15141b",
  grey_fg = "#686385",
  grey_fg2 = "#4e4f5a",
  light_grey = "#757094",
  red = palette.red,
  baby_pink = "#ff7e7e",
  pink = palette.pink,
  line = "#343243",
  green = palette.green,
  vibrant_green = "#95c561",
  nord_blue = "#50d6ff",
  blue = palette.blue,
  orange = "#ffb453",
  yellow = palette.orange,
  sun = "#ffce8f",
  purple = palette.purple,
  dark_purple = "#8852ff",
  teal = "#00f6a4",
  cyan = "#9be8ff",
  statusline_bg = "#161722",
  lightbg = "#2a2b36",
  pmenu_bg = palette.purple_faded,
  folder_bg = palette.blue,
}

M.base_16 = {
  base00 = palette.black,
  base01 = palette.red,
  base02 = palette.green,
  base03 = palette.orange,
  base04 = palette.blue,
  base05 = palette.purple,
  base06 = palette.blue,
  base07 = palette.white,
  base08 = palette.blacker,
  base09 = palette.red,
  base0A = palette.green,
  base0B = palette.orange,
  base0C = palette.blue,
  base0D = palette.purple,
  base0E = palette.blue,
  base0F = palette.white,
}

M.type = "dark"

M = require("base46").override_theme(M, "aura")

return M

