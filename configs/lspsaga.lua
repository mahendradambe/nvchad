local M = {}

function M.config()
  require("lspsaga").setup({
    preview = {
      lines_above = 1,
      lines_below = 17,
    },
    scroll_preview = {
      scroll_down = "<C-j>",
      scroll_up = "<C-k>",
    },
    request_timeout = 3000,
    finder = {
      keys = {
        jump_to = "e",
        expand_or_jump = "<CR>",
        vsplit = "s",
        split = "i",
        tabe = "t",
        quit = { "q", "<ESC>" },
        close_in_preview = "<ESC>",
      },
    },
    definition = {
      edit = "<C-c>o",
      vsplit = "<C-c>v",
      split = "<C-c>s",
      tabe = "<C-c>t",
      quit = "q",
    },
    code_action = {
      num_shortcut = true,
      keys = {
        quit = "q",
        exec = "<CR>",
      },
    },
    lightbulb = {
      enable = false,
      sign = true,
      enable_in_insert = true,
      sign_priority = 20,
      virtual_text = false,
    },
    diagnostic = {
      text_hl_follow = true,
      on_insert = true,
      on_insert_follow = false,
      show_code_action = true,
      show_source = true,
      border_follow = true,
      extend_relatedInformation = false,
      jump_num_shortcut = true,
      keys = {
        exec_action = "r",
        quit = "q",
        expand_or_jump = "<CR>",
        quit_in_show = { "q", "<ESC>" },
      },
    },
    rename = {
      quit = "<C-c>",
      mark = "x",
      confirm = "<CR>",
      exec = "<CR>",
      in_select = true,
    },
    outline = {
      win_position = "right",
      win_with = "_sagaoutline",
      win_width = 30,
      auto_preview = false,
      auto_refresh = true,
      auto_close = true,
      close_after_jump = true,
      keys = {
        expand_or_jump = "<CR>",
        quit = "q",
      },
    },
    symbol_in_winbar = {
      enable = false,
      hide_keyword = true,
      show_file = false,
      color_mode = true,
    },
    beacon = {
      enable = true,
      frequency = 12,
    },
    ui = {
      title = false,
      border = "single",
      winblend = 0,
      kind = {
      },
    },
  })
end

function M.init()
  require("core.utils").load_mappings "lspsaga"
end

return M
