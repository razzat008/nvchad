local present, null_ls = pcall(require, "none-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.rustfmt.with { filetypes = { "rs" } },
  b.formatting.usort,
  b.formatting.prettierd.with { filetypes = { "html", "js", "css", "yml", "yaml", "md", "ts" } },
  b.formatting.clang_format,

  -- Lua
  b.formatting.stylua,

  -- Shell
  -- b.formatting.shfmt,

  -- b.diagnostics.phpmd,
  -- b.diagnostics.cpplint,
  -- b.diagnostics.shellcheck.with { diagnostics_format = "#{m} [#{c}]" },
  b.diagnostics.eslint_d.with {                 -- js/ts linter
    condition = function(utils)
      return utils.root_has_file ".eslintrc.js" -- change file extension if you use something else
    end,
  },
}

b.diagnostics.actionlint.with {

}

null_ls.setup {
  debug = true,
  sources = sources,
}
