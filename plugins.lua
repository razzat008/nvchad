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

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  --markdown
  {
    "toppair/peek.nvim",
    enabled = true,
    build = "deno task --quiet build:fast",
    config = function()
      require "custom.configs.peek"
    end,
  },

  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    keys = "s",
    enabled = true,
    config = function()
      require "custom.configs.hop"
    end,
  },

  -- harpoon

  {
    "ThePrimeagen/harpoon",
    enabled = true,
    keys = { "<leader>a", "<leader>o" },
    config = function()
      require "custom.configs.harpoon"
    end,
  },

  -- undo tree
  {
    "mbbill/undotree",
    enabled = false,
    keys = "<leader>u",
    event = "BufEnter",
    config = function()
      require "custom.configs.undotree"
    end,
  },

  {
    "vimwiki/vimwiki",
    event = "VeryLazy",
    enabled = true,
    keys = "<leader>ww",
    ft = "wiki",
    config = function()
      require "custom.configs.vimwiki"
    end,
  },
  -- {
  --   "simrat/rust-tools.nvim",
  --   enabled = true,
  --   config=function ()
  --     require "custom.configs.rust_tools"
  --   end,
  -- },
}

return plugins
