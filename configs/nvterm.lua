return function()
	require("base46.term")
	require("nvterm").setup({
		terminals = {
			shell = vim.o.shell,
			list = {},
			type_opts = {
				float = {
					relative = "editor",
					row = 0.05,
					col = 0.05,
					width = 0.9,
					height = 0.8,
					border = "single",
				},
				horizontal = { location = "rightbelow", split_ratio = 0.3 },
				vertical = { location = "rightbelow", split_ratio = 0.5 },
			},
		},
		behavior = {
			autoclose_on_quit = {
				enabled = false,
				confirm = true,
			},
			close_on_exit = true,
			auto_insert = true,
		},
	})
end
