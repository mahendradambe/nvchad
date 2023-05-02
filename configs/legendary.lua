local M = {}

function M.config()
	local nv_mappings = require("core.utils").load_config().mappings

	local ly_mappings = {}
	local modes = { "v", "n", "i" }
	for group, v in pairs(nv_mappings) do
		for i, mode in ipairs(modes) do
			if type(v[mode]) == "table" then
				for bind, v1 in pairs(v.n) do
					local cmd = v1[1]
					local des = (type(v1[2]) == "string" and v1[2] or "")
					table.insert(ly_mappings, { bind, cmd, description = des, itemgroup = group })
				end
			end
		end
	end

	require("legendary").setup({
		keymaps = ly_mappings,
		which_key = {
			auto_register = true,
		},
	})
end

function M.init()
	require("core.utils").load_mappings("legendary")
end

return M
