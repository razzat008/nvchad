local present, mpreview = pcall(require, "peek")

if not present then
  return
end

local options = {
  auto_load = true,
  filetype = { "markdown", "vimwiki" },
  syntax = true,
  throttle_time = "auto",
  close_on_bdelete = true,
  theme = "dark",
  app = { "chromium", "--new-window" },
  -- app = "webview",
}

mpreview.setup(options)
vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})
vim.api.nvim_create_user_command('PeekClose', require('peek').close, {})

local map = vim.keymap.set

map("n", "<leader>mp", "<cmd>PeekOpen<CR>", { desc = "Toggle Markdown Preview" })
