local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  -- b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!
  -- b.formatting.prettier.with { filetypes = { "html", "markdown", "css" } }, -- so prettier works only on these filetypes
  --
  -- -- Lua
  -- b.formatting.stylua,
  --
  -- -- cpp
  -- b.formatting.clang_format,

  -- webdev stuff
  b.formatting.deno_fmt,
  b.formatting.rustfmt,
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

null_ls.setup {
  debug = true,
  sources = sources,
}
