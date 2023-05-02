return function()
  require("neodim").setup({
    alpha = 0.45,
    blend_color = "#000",
    update_in_insert = {
      enable = true,
      delay = 100,
    },
    hide = {
      virtual_text = true,
      signs = false,
      underline = false,
    },
  })
end

