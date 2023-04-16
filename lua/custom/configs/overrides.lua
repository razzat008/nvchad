local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "bash",
    "lua",
    "html",
    "css",
    "javascript",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    disable = {},
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "html-lsp",
    "css-lsp",
    "clangd",
    "clang-format",
    "cpplint",
    "python-lsp-server",
    "rust-analyzer",
    "typescript-language-server",
    "alex",
    "deno",
    "stylua",
    "usort",
    "mypy",
    "luacheck",
    "prettierd",
    "cssmodules-language-server",
    "bash-language-server",
    "eslint_d",
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
