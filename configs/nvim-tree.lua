return {
	git = {
		enable = true,
	},

	renderer = {
		highlight_git = true,
		icons = {
			show = {
				git = true,
			},
		},
	},
	on_attach = function(bufnr)
		local api = require("nvim-tree.api")

		local function options(desc)
			return {
				desc = "nvim-tree: " .. desc,
				buffer = bufnr,
				noremap = true,
				silent = true,
				nowait = true,
			}
		end

		api.config.mappings.default_on_attach(bufnr)

		vim.keymap.set("n", "?", api.tree.toggle_help, options("Help"))
		vim.keymap.set("n", ".", api.tree.change_root_to_node, options("Change Root"))
		vim.keymap.set("n", "<BS>", api.tree.change_root_to_parent, options("Go Up"))
		vim.keymap.set("n", "l", api.node.open.edit, options("Open File/Toggle Folder"))
		vim.keymap.set("n", "h", api.node.navigate.parent_close, options("Open File/Toggle Folder"))
	end,
}
