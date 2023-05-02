local g = vim.g
local o = vim.opt

g.guifont = "FiraCode Nerd Font:h14"
g.highlighturl_enabled = true -- highlight URLs by default

o.diffopt:append "linematch:60" -- enable linematch diff algorithm
o.foldenable = true -- enable fold for nvim-ufo
o.relativenumber = true -- Show relative numberline
o.foldlevel = 99 -- set high foldlevel for nvim-ufo
o.foldlevelstart = 99 -- start with all code unfolded
o.foldcolumn = "1"  -- show foldcolumn in nvim 0.9
o.scrolloff = 12 -- Number of lines to keep above and below the cursor
o.splitkeep = "screen"  -- Maintain code view when splitting

if g.neovide then
  -- Helper function for transparency formatting
  local alpha = function()
    return string.format("%x", math.floor(255 * (vim.g.transparency or 0.8)))
  end

  -- g:neovide_transparency should be 0 if you want to unify transparency of content and title bar.
  g.neovide_transparency = 0.0
  g.transparency = 0.9
  g.neovide_background_color = "#0f1117" .. alpha()

  g.neovide_floating_blur_amount_x = 5.0
  g.neovide_floating_blur_amount_y = 5.0

  g.neovide_remember_window_size = true
  g.neovide_input_macos_alt_is_meta = true
  g.neovide_input_use_logo = true
end

require "custom.autocmds"
