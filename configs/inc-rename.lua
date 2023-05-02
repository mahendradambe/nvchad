local M = {}

function M.config()
  require("inc_rename").setup({
    input_buffer_type = "dressing",
  })
end

function M.init()
  require("core.utils").load_mappings("increname")
end

return M
