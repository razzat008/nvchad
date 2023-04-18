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
    ft = { "markdown" },
    build = "deno task --quiet build:fast",
    config = function()
      require "custom.configs.peek"
    end,
  },

  -- easy navigation
  {
    "ggandor/lightspeed.nvim",
    enabled = true,
    -- event = "VeryLazy",
    keys = "s",
    config = function()
      require "custom.configs.lightspeed"
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

  --md previewer
  -- {
  --   "jbyuki/md-prev.nvim",
  --   enabled = true,
  --   event = "BufEnter",
  -- },
  {
    "codota/tabnine-nvim",
    event = "BufEnter",
    enabled = true,
    build = "./dl_binaries.sh",
    config = function()
      require "custom.configs.tabnine"
    end,
  },
}

return plugins
