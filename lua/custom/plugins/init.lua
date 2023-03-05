local overrides = require "custom.plugins.overrides"

local plugins = {

  -- ["goolord/alpha-nvim"] = { disable = false } -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      -- require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["ggandor/lightspeed.nvim"] = {
    --   after = "alpha",
    disable = false,
    config = function()
      require "custom.plugins.lightspeed"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  -- Install a plugin
  -- ["max397574/better-escape.nvim"] = {
  --   event = "InsertEnter",
  --   config = function()
  --     require("better_escape").setup()
  --   end,
  -- },

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "block", -- default/round/block/arrow
        overriden_modules = function()
          return require "custom.statusline"
        end,
      },
    },
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
  -- markdown previewer
  ["toppair/peek.nvim"] = {
    run = "deno taks --quiet build:fast",
    disable = false,
    config = function()
      require "custom.plugins.markpreviewer"
    end,
  },
}

return plugins
