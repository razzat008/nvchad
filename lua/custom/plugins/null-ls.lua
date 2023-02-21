local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.usort,
  b.formatting.prettierd.with { filetypes = { "html", "js", "css", "markdown" } },
  -- b.formatting.prettier,
  b.formatting.clang_format,

  -- Lua
  b.formatting.stylua,

  -- Shell
  -- b.formatting.shfmt,

  -- b.diagnostics.phpmd,
  -- b.diagnostics.cpplint,
  -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.eslint_d.with { -- js/ts linter
    condition = function(utils)
      return utils.root_has_file ".eslintrc.js" -- change file extension if you use something else
    end,
  },
}
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach = function(client, bufnr)
  if client.supports_method "textDocument/formatting" then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd("BufWritePre", {
      group = augroup,
      buffer = bufnr,
      callback = function()
        -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
        vim.lsp.buf.format()
      end,
    })
  end
end

null_ls.setup {
  debug = true,
  sources = sources,
}
