local M = {}

function M.config()
	local notify = require("notify")

	notify.setup({
		---@usage Animation style one of { "fade", "slide", "fade_in_slide_out", "static" }
		stages = "fade_in_slide_out",
		---@usage Function called when a new window is opened, use for changing win settings/config
		on_open = nil,
		---@usage Function called when a window is closed
		on_close = nil,
		---@usage timeout for notifications in ms, default 5000
		timeout = 2000,
		-- @usage User render fps value
		fps = 60,
		-- Render function for notifications. See notify-render()
		render = "default",
		---@usage highlight behind the window for stages that change opacity
		background_colour = "#000",
		---@usage minimum width for notification windows
		minimum_width = 50,
		---@usage notifications with level lower than this would be ignored. [ERROR > WARN > INFO > DEBUG > TRACE]
		level = "TRACE",
		---@usage Icons for the different levels
	})

  require("telescope").load_extension("notify")

	vim.notify = notify

	vim.lsp.handlers["textDocument/hover"] = function(_, result, ctx, config)
		config = config or {}
		config.focus_id = ctx.method
		if not (result and result.contents) then
			-- vim.notify("No information available")
			return
		end
		local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
		markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)
		if vim.tbl_isempty(markdown_lines) then
			-- vim.notify('No information available')
			return
		end
		return vim.lsp.util.open_floating_preview(markdown_lines, "markdown", config)
	end
end

function M.init()
	require("core.utils").load_mappings("notify")
end


return M
