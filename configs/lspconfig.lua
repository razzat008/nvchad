local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table

local servers =
{ "rust_analyzer", "html", "cssls", "pylsp", "tsserver", "lua_ls", "clangd", "bashls", "phpactor", "texlab", "jdtls" }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

--
lspconfig.clangd.setup {
  filetypes = { "c", "cpp", "header" },
}

lspconfig.texlab.setup {
  filetypes = { "tex" },
}

lspconfig.tsserver.setup {
  filetypes = { "js", "ts" },
}
