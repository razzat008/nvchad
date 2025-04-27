require("nvchad.configs.lspconfig").defaults()

local servers = {
  "rust_analyzer",
  "html",
  "cssls",
  "pylsp",
  "ts_ls",
  "lua_ls",
  "clangd",
  "bashls",
  "phpactor",
  "texlab",
  "gopls",
  "jdtls",
  "yamlls",
  "tailwindcss",
  "asm_lsp",
}

vim.lsp.enable(servers)
