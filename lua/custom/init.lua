local autocmd = vim.api.nvim_create_autocmd

local opt = vim.opt
local g = vim.g

-- for numbers
opt.relativenumber = true
opt.wrap = false

-- vim.api.nvim_create_user_command('PeekOpen', require('peek').open, {})

vim.cmd "silent! command! PeekOpen lua require('peek').open()"
vim.cmd "silent! command! PeekClose lua require('peek').close()"
-- Auto resize panes when resizing nvim window
autocmd("VimResized", {
  pattern = "*",
  command = "tabdo wincmd =",
})
