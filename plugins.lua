local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "AckslD/swenv.nvim",
    lazy = false,
  },

  {
    "stevearc/dressing.nvim",
    lazy = false,
  },

  {
    "phaazon/hop.nvim",
    branch = "v2",
    lazy = false,
    config = function ()
      -- require("hop").setup {keys = "etovxqpdygfblzhckisuran" }
      require("hop").setup {}
    end
  },

  {
    "Shatur/neovim-session-manager",
    lazy = false,
    config = function()
      local config = require('session_manager.config')
      require('session_manager').setup({
        autoload_mode = config.AutoloadMode.CurrentDir
      })
    end,
  },

  {
    "stevearc/aerial.nvim",
    lazy = false,
    config = function ()
      require("aerial").setup()
    end,
  },
  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
