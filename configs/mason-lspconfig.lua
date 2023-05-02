return function ()
  local servers = vim.tbl_keys(require("custom.configs.lspconfig").servers)
  require("mason-null-ls").setup({
    automatic_setup = true,
  })
  require("mason-lspconfig").setup({
    automatic_installation = true
  })
end
