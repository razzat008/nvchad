local overrides = require "configs.overrides"
return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "nvimtools/none-ls.nvim",
        config = function()
          require "configs.null-ls"
        end,
      },
    },
    config = function()
      require "nvchad.configs.lspconfig"
      require "configs.lspconfig"
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
    "zbirenbaum/nvterm",
    opts = overrides.nvterm,
  },

  {
    "folke/which-key.nvim",
    enabled = false,
  },

  {
    "phaazon/hop.nvim",
    event = "VeryLazy",
    keys = "s",
    enabled = true,
    config = function()
      require "configs.hop"
    end,
  },

  -- harpoon

  {
    "ThePrimeagen/harpoon",
    enabled = true,
    keys = { "<leader>a", "<leader>o" },
    config = function()
      require "configs.harpoon"
    end,
  },

  -- undo tree
  {
    "mbbill/undotree",
    enabled = true,
    keys = "<leader>u",
    event = "BufEnter",
    config = function()
      require "configs.undotree"
    end,
  },

  {
    "vimwiki/vimwiki",
    event = "VeryLazy",
    enabled = true,
    keys = "<leader>ww",
    ft = "wiki",
    config = function()
      require "configs.vimwiki"
    end,
  },

  -- {
  --   "iamcco/markdown-preview.nvim",
  --   cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  --   build = "cd app && yarn install",
  --   init = function()
  --     vim.g.mkdp_filetypes = { "markdown" }
  --   end,
  --   ft = { "markdown" },
  -- },
  {
    "lervag/vimtex",
    init = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  {
    "toppair/peek.nvim",
    event = { "VeryLazy" },
    build = "deno task --quiet build:fast",
    ft = "md",
    config = function()
      require "configs.peek"
    end,
  },
}
