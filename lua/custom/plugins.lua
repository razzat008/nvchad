local overrides = require "custom.configs.overrides"

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
    opts = overrides.mason,
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
  -- {
  -- 	"max397574/better-escape.nvim",
  -- 	event = "InsertEnter",
  -- 	config = function()
  -- 		require("better_escape").setup()
  -- 	end,
  -- },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- Uncomment if you want to re-enable which-key
  {
    "folke/which-key.nvim",
    enabled = false,
  },

  --markdown
  {
    "toppair/peek.nvim",
    ft = { "markdown" },
    build = "deno task --quiet build:fast",
    config = function()
      require "custom.configs.peek"
    end,
  },

  -- easy navigation
  {
    "ggandor/leap.nvim",
    enabled = true,
    -- event = "VeryLazy",
    keys = "s",
    config = function()
      require "custom.configs.leap"
    end,
  },

  -- harpoon

  {
    "ThePrimeagen/harpoon",
    enabled = true,
    keys = "<leader>a",
    config = function()
      require "custom.configs.harpoon"
    end,
  },
}

return plugins
