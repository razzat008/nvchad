local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

require("base46").load_highlight "lsp"
require "nvchad_ui.lsp"

local M = {}
local utils = require "core.utils"

-- export on_attach & capabilities for custom lspconfigs

M.on_attach = function(client, bufnr)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentRangeFormattingProvider = false

  utils.load_mappings("lspconfig", { buffer = bufnr })

  if client.server_capabilities.signatureHelpProvider then
    require("nvchad_ui.signature").setup(client)
  end
end

M.capabilities = vim.lsp.protocol.make_client_capabilities()

M.capabilities.textDocument.completion.completionItem = {
  documentationFormat = { "markdown", "plaintext" },
  snippetSupport = true,
  preselectSupport = true,
  insertReplaceSupport = true,
  labelDetailsSupport = true,
  deprecatedSupport = true,
  commitCharactersSupport = true,
  tagSupport = { valueSet = { 1 } },
  resolveSupport = {
    properties = {
      "documentation",
      "detail",
      "additionalTextEdits",
    },
  },
}

-- lspconfig.sumneko_lua.setup {
--   on_attach = M.on_attach,
--   capabilities = M.capabilities,
--
--   settings = {
--     Lua = {
--       diagnostics = {
--         globals = { "vim" },
--       },
--       workspace = {
--         library = {
--           [vim.fn.expand "$VIMRUNTIME/lua"] = true,
--           [vim.fn.expand "$VIMRUNTIME/lua/vim/lsp"] = true,
--         },
--         maxPreload = 100000,
--         preloadFileSize = 10000,
--       },
--     },
--   },
-- }
--
-- -- js/ts server
-- lspconfig.tsserver.setup {
--   server = {
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--   },
-- }
--
-- -- js/ts server
-- lspconfig.pyright.setup {
--   server = {
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--   },
-- }
--
-- -- c/cpp
-- lspconfig.clangd.setup {
--   server = {
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--   },
-- }
--
-- -- css/html
-- lspconfig.cssls.setup {
--   filetypes = { "css" },
--   server = {
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--   },
-- }
--
-- -- html language server
-- lspconfig.html.setup {
--   filetypes = { "html", "php" },
--   server = {
--     capabilities = M.capabilities,
--     on_attach = M.on_attach,
--   },
-- }

-- this is replacement for the above commented lines of codes
local servers = { "html", "cssls", "pyright", "tsserver", "lua_ls", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = M.on_attach,
    capabilities = M.capabilities,
  }
end

return M
