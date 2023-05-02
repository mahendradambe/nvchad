---@type ChadrcConfig
local M = {}

local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  transparency = true,

  nvdash = {
    load_on_startup = true,
  },

  statusline = {
    theme = 'vscode_colored',
  },

  tabufline = {
    show_numbers = true,
  },

  hl_override = highlights.override,
  hl_add = highlights.add,

  lsp_semantic_tokens = true,
  lsp = {
    signature = {
      disabled = false,
      silent = true
    },
  },

  cmd = {
    style = "atom_colored",
  },

  telescope = {
    style = "bordered"
  }
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
