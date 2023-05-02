---@type NvPluginSpec[]
local plugins = {
  -- language
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
        "williamboman/mason-lspconfig.nvim",
        cmd = { "LspInstall", "LspUninstall" },
        config = require("custom.configs.mason-lspconfig"),
      },
      { "ray-x/lsp_signature.nvim" },
      {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {
          "jose-elias-alvarez/null-ls.nvim",
          {
            "jay-babu/mason-null-ls.nvim",
            cmd = { "NullLsInstall", "NullLsUninstall" },
            event = { "BufReadPre", "BufNewFile" },
            config = require("custom.configs.null-ls"),
          },
        },
      },
    },
    config = require("custom.configs.lspconfig").config,
  },
  {
    "williamboman/mason.nvim",
    opts = require("custom.configs.mason"),
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("custom.configs.treesitter"),
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      { "nvim-treesitter/nvim-treesitter-textobjects" },
      { "mrjones2014/nvim-ts-rainbow" },
      { "JoosepAlviste/nvim-ts-context-commentstring" },
      { "mfussenegger/nvim-treehopper" },
      { "andymass/vim-matchup" },
      {
        "windwp/nvim-ts-autotag",
        config = require("custom.configs.autotag"),
      },
    },
  },
  {
    "hrsh7th/nvim-cmp",
    opts = require("custom.configs.cmp"),
  },
  {
    "editorconfig/editorconfig-vim",
  },
  {
    "edluffy/specs.nvim",
    event = "VeryLazy",
    config = require("custom.configs.specs").config,
    init = require("custom.configs.specs").init,
  },

  -- ui/ux
  {
    "rcarriga/nvim-notify",
    event = "VeryLazy",
    config = require("custom.configs.notify").config,
    init = require("custom.configs.notify").init,
  },
  {
    "gen740/SmoothCursor.nvim",
    event = "VeryLazy",
    config = require("custom.configs.smoothcursor"),
  },
  {
    "smjonas/inc-rename.nvim",
    event = "LspAttach",
    config = require("custom.configs.inc-rename").config,
    init = require("custom.configs.inc-rename").init,
  },
  {
    "RRethy/vim-illuminate",
    event = { "CursorHold", "CursorHoldI" },
    config = require("custom.configs.vim-illuminate"),
  },
  {
    "zbirenbaum/neodim",
    event = "LspAttach",
    config = require("custom.configs.neodim"),
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = require("custom.configs.nvim-tree"),
  },
  {
    "mrjones2014/legendary.nvim",
    tag = "v2.1.0",
    event = "VeryLazy",
    dependencies = {
      "kkharji/sqlite.lua",
      {
        "stevearc/dressing.nvim",
        lazy = true,
        config = require "custom.configs.dressing"
      },
    },
    config = require("custom.configs.legendary").config,
    init = require("custom.configs.legendary").init,
  },

  -- utils
  {
    "NvChad/nvterm",
    config = require("custom.configs.nvterm"),
  },
  {
    "rainbowhxch/accelerated-jk.nvim",
    lazy = true,
    event = "VeryLazy",
    config = require("custom.configs.accelerated-jk").config,
    init = require("custom.configs.accelerated-jk").init,
  },
  {
    "lewis6991/satellite.nvim",
    event = "VeryLazy",
    enabled = true,
    config = require("custom.configs.satellite"),
  },
  {
    "romainl/vim-cool",
    event = { "CursorMoved", "InsertEnter" },
  },
  {
    "rhysd/clever-f.vim",
    event = { "BufReadPost", "BufAdd", "BufNewFile" },
    config = require("custom.configs.clever-f"),
  },
  {
    "andreadev-it/shade.nvim",
    config = require("custom.configs.shade"),
  },
  {
    "ggandor/leap.nvim",
    event = "VeryLazy",
    config = require("custom.configs.leap"),
  },
  {
    "mrjones2014/smart-splits.nvim",
    config = true,
    event = "BufAdd",
    init = require("custom.configs.smart-splits"),
  },
  {
    "abecodes/tabout.nvim",
    event = "InsertEnter",
    config = require("custom.configs.tabout"),
  },
  {
    "rmagatti/auto-session",
    cmd = { "SaveSession", "RestoreSession", "DeleteSession" },
    config = require("custom.configs.auto-session"),
  },
  {
    "mawkler/modicator.nvim",
    event = "BufEnter",
    opts = {},
  },
  {
    "gbprod/stay-in-place.nvim",
    event = "BufEnter",
    opts = {
      set_keymaps = true,
      preserve_visual_selection = true,
    },
  },
  {
    "echasnovski/mini.move",
    version = "*",
    event = "BufEnter",
    config = require "custom.configs.move",
  },
  { "tenxsoydev/karen-yank.nvim", config = true },
  {
    "anuvyklack/windows.nvim",
    event = "BufEnter",
    dependencies = {
      "anuvyklack/middleclass",
    },
    config = require "custom.configs.windows",
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    event = "BufEnter",
  },
}
return plugins
