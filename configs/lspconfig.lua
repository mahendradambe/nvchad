require("plugins.configs.lspconfig")
local lspconfig = require("lspconfig")

local M = {}

M.servers = {
	["html"] = {},
	["cssls"] = {},
	["tsserver"] = {},
	["eslint"] = {},
	["jsonls"] = {},
	["tailwindcss"] = {},

	["pyright"] = {},

	["yamlls"] = {},
	["dockerls"] = {},
	["docker_compose_language_service"] = {},
	["terraformls"] = {},
	["tflint"] = {},

	["clangd"] = {},
}

function M.config()
	local on_attach = function(client, bufnr)
		require("plugins.configs.lspconfig").on_attach(client, bufnr)
		require("lsp_signature").on_attach({
			bind = true,
			use_lspsaga = true,
			floating_window = true,
			fix_pos = true,
			hint_enable = true,
			hi_parameter = "Search",
			handler_opts = {
				border = "rounded",
			},
		}, bufnr)
	end
	local capabilities = require("plugins.configs.lspconfig").capabilities

	-- if you just want default config for the servers then put them in a table
  local servers = vim.tbl_keys(M.servers)
	for _, lsp in ipairs(servers) do
		lspconfig[lsp].setup({
			on_attach = on_attach,
			capabilities = capabilities,
		})
	end
end

return M
