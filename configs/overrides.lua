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
  },
  indent = {
    enable = true,
    -- disable = {},
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
    "tsserver",
    "html-lsp",
    -- "css-lsp",
    -- "clang-format",
    -- "deno",
    -- "cssmodules-language-server",
    -- "bash-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  disable_netrw = false,
  hijack_netrw = false,
  git = {
    enable = false,
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
