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
    "tsserver",
    "tailwindcss-language-server",
    -- "cssmodules-language-server",
    -- "bash-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  disable_netrw = false,
  hijack_netrw = true,
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
