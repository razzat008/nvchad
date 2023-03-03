local M = {}

M.treesitter = {
  auto_install = true,
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "c",
    "rust",
    "python",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "html-lsp",
    "css-lsp",
    "clangd",
    "cpplint",
    "python-lsp-server",
    "rust-analyzer",
    "alex",
    "deno",
    "stylua",
    "usort",
    "prettierd",
    "cssmodules-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
