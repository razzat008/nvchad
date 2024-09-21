local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table

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
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.clangd.setup {
  filetypes = { "c", "cpp" },
  single_file_support = false,
  root_dir = function()
    return vim.loop.cwd()
  end,
  cmd = {
    "clangd",
    -- "--offset-encoding=utf-16",
  },
}
lspconfig.asm_lsp.setup {
  filetypes = { "asm" },
}

lspconfig.texlab.setup {
  filetypes = { "tex" },
}

lspconfig.ts_ls.setup {
  filetypes = { "js", "ts" },
}

lspconfig.yamlls.setup {
  filetypes = { "yml", "yaml" },
}

lspconfig.tailwindcss.setup {
  filetypes = { "js", "ts", "jsx", "tsx" },
}
lspconfig.gopls.setup {
  filetypes = { "go" },
}
