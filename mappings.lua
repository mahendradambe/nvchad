---@type MappingsTable
local M = {}
local opts = { nowait = true }

M.disabled = {
	n = {
		["<leader>x"] = "",
		["<A-h>"] = "",
	},
}

M.general = {
	n = {
		["x"] = { '"_x', "Delete character", opts },
		["N"] = { "Nzzzv <cmd>lua require('specs').show_specs()<CR>" },
		["n"] = { "nzzzv <cmd>lua require('specs').show_specs()<CR>" },
		["<F3>"] = { "<cmd>lua require('specs').show_specs()<CR>", "Show specs", { silent = true } },
		["<C-u>"] = { "<C-u> <cmd>lua require('specs').show_specs()<CR>", "Page up", opts },
		["<C-d>"] = { "<C-d> <cmd>lua require('specs').show_specs()<CR>", "Page down", opts },
		["<C-a>"] = { "<cmd> %y+ <CR>", "Select All", opts },
		["<S-h>"] = { "^" },
		["<S-l>"] = { "$" },
		["<C-q>"] = { ":q<CR>", "Quit", opts },
		["<C-x>"] = {
			function()
				require("nvchad_ui.tabufline").close_buffer()
			end,
			"Close Buffer",
		},
		["<leader>gg"] = { "<cmd> lua require('nvterm.terminal').send('lazygit', 'float')<CR>", "Lazygit", opts },
	},
	i = {
		["<A-k>"] = { "<Esc>:m .-2<CR>==gi", "Move code up", opts },
		["<A-j>"] = { "<Esc>:m .+1<CR>==gi", "Move code down", opts },
		["<C-bs>"] = { "<C-o>db", "Delete word backwards", opts },
		["<C-A-bs>"] = { "<C-o>db", "Delete word backwards", opts },
		["<C-i>"] = { "<C-o>^", "Context start", opts },
		["<C-a>"] = { "<C-o>$", "Line end", opts },
		["<C-w>"] = { "<C-o>w", "Move word", opts },
		["<C-A-w>"] = { "<C-o>W", "Move Word", opts },
		["<C-e>"] = { "<C-o>e", "Move word end", opts },
		["<C-A-e>"] = { "<C-o>e", "Move Word End", opts },
		["<C-b>"] = { "<C-o>b", "Move word back", opts },
		["<C-A-b>"] = { "<C-o>B", "Move Word Back", opts },
		["<C-s"] = { "<Esc>:w<CR>l", "Save and continue" },
	},
}

M.smartsplits = {
	plugin = true,
	n = {
		["<A-Up>"] = { "<cmd>lua require('smart-splits').resize_up()<CR>", "Resize window up" },
		["<A-Down>"] = { "<cmd>lua require('smart-splits').resize_down()<CR>", "Resize window down" },
		["<A-Left>"] = { "<cmd>lua require('smart-splits').resize_left()<CR>", "Resize window left" },
		["<A-Right>"] = { "<cmd>lua require('smart-splits').resize_right()<CR>", "Resize window right" },
		["<leader>h"] = { "<cmd>lua require('smart-splits').swap_buf_left()<CR>", "Swap buffer left" },
		["<leader>j"] = { "<cmd>lua require('smart-splits').swap_buf_down()<CR>", "Swap buffer down" },
		["<leader>k"] = { "<cmd>lua require('smart-splits').swap_buf_up()<CR>", "Swap buffer up" },
		["<<leader>l"] = { "<cmd>lua require('smart-splits').swap_buf_right()<CR>", "Swap buffer right" },
	},
}

M.telescope = {
	n = {
		["<leader>ff"] = { "<cmd>Telescope git_files<CR>", "find git tracked files" },
		["<leader>fF"] = { "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>", "find all files" },
	},
}

M.jk = {
	plugin = true,
	n = {
		["j"] = { "<Plug>(accelerated_jk_gj)", "accelerated j" },
		["k"] = { "<Plug>(accelerated_jk_gk)", "accelerated k" },
	},
}

M.specs = {
	plugin = true,
	n = {
		["n"] = { '<cmd>lua require("specs").show_specs()<CR>', "search forward with cursor highlighting" },
		["N"] = { '<cmd>lua require("specs").show_specs()<CR>', "search forward with cursor highlighting" },
	},
}

M.legendary = {
	plugin = true,
	n = {
		["<C-p>"] = { "<cmd>Legendary<CR>", "Open Legendary" },
	},
}

M.increname = {
	plugin = true,
	n = {
		["<F2>"] = { ":IncRename ", "Rename" },
	},
}

M.notify = {
	plugin = true,
	n = {
		["<leader>fn"] = { ":Telescope notify <CR>", "Notifications" },
	},
}

return M
