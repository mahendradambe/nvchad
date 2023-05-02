return function()
	require("dressing").setup({
		select = {
			get_config = function(opts)
				if opts.kind == "legendary.nvim" then
					return {
						telescope = {
							sorter = require("telescope.sorters").fuzzy_with_index_bias({}),
						},
					}
				end

				if opts.kind == "codeaction" then
					return {
						backend = "nui",
						nui = {
							relative = "cursor",
							max_width = 40,
						},
					}
				end

        return {}
			end,
		},
	})
end
