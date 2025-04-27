local M = {}

M.treesitter = {
  ensure_installed = {
    "bash",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "python",
    "rust",
    "markdown",
    "yaml",
    "json",
    "tsx",
    "typescript",
    "vim",
    "ssh_config",
    "go",
  },

  indent = {
    enable = true,
    -- disable = {},
  },
  textobjects = {
    move = {
      enable = true,
      goto_next_start = { ["]f"] = "@function.outer", ["]c"] = "@class.outer", ["]a"] = "@parameter.inner" },
      goto_next_end = { ["]F"] = "@function.outer", ["]C"] = "@class.outer", ["]A"] = "@parameter.inner" },
      goto_previous_start = { ["[f"] = "@function.outer", ["[c"] = "@class.outer", ["[a"] = "@parameter.inner" },
      goto_previous_end = { ["[F"] = "@function.outer", ["[C"] = "@class.outer", ["[A"] = "@parameter.inner" },
    },
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "eslint_d",
    "clangd",
    "rust-analyzer",
    "stylua",
    "usort",
    "prettierd",
    "prettier",
    "html-lsp",
    -- "css-lsp",
    "clang-format",
    "deno",
    "typescript-language-server",
    "ts_ls",
    "tailwindcss-language-server",
    -- "cssmodules-language-server",
    -- "bash-language-server",
  },
}

M.nvterm = {
  terminals = {
    shell = vim.o.shell,
    list = {},
    type_opts = {
      float = {
        relative = 'editor',
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = .4, },
      vertical = { location = "rightbelow", split_ratio = .9 },
    }
  },
  behavior = {
    autoclose_on_quit = {
      enabled = false,
      confirm = true,
    },
    close_on_exit = true,
    auto_insert = true,
  },
}

-- git support in nvimtree
M.nvimtree = {
  disable_netrw = false,
  hijack_netrw = true,
  git = {
    enable = true,
  },

  renderer = {
    root_folder_label = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.indent_blankline = {
  space_char_blankline = " ",
}

return M


